//
//  DWSlideCaptchaView.h
//  code
//
//  Created by Wicky on 2017/4/12.
//  Copyright © 2017年 Wicky. All rights reserved.
//


/**
 DWSlideCaptchaView
 滑动验证视图，提供滑动验证功能
 
 version 1.0.0
 提供以点或值改变两种api
 图片自定义支持
 滑块自定义支持
 */

#import <UIKit/UIKit.h>

#define DWSlideCaptchaUndefineValue (-1)
@class DWSlideCaptchaView;
@protocol DWSlideCaptchaDelegate <NSObject>

@optional
/**
 验证动画将要开始代理
 
 @param captchaView 验证视图
 @param success 验证结果是否成功
 */
-(void)dw_CaptchaView:(DWSlideCaptchaView *)captchaView animationWillStartWithSuccess:(BOOL)success;

/**
 验证动画完成代理

 @param captchaView 验证视图
 @param success 验证结果是否成功
 */
-(void)dw_CaptchaView:(DWSlideCaptchaView *)captchaView animationCompletionWithSuccess:(BOOL)success;

@end

@interface DWSlideCaptchaView : UIView

/**
 图层相关
 */
///验证位置遮罩层
@property (nonatomic ,strong ,readonly) CAShapeLayer * positionLayer;

///滑块层
@property (nonatomic ,strong ,readonly) CAShapeLayer * thumbLayer;

/**
 滑块相关属性
 */
///滑块形状
@property (nonatomic ,strong) UIBezierPath * thumbShape;

/**
 以下四个属性用于指定验证点位置。
 
 当使用useRandomValue时会随机生成验证点
 
 当不使用随机验证点时，以targetValue及thumbCenterY联合决定验证点
 当targetValue或thumbCenterY没有指定值得时候，会以随机的合适的值决定验证点
 当targetValue或thumbCenterY设置成 DWSlideCaptchaUndefineValue 时，也会以随机的合适的值决定验证点
 
 tolerance为验证容差，及与实际位置相差在一定范围内均可以验证成功
 */
///指定滑块验证值，有效范围 [0,1]
@property (nonatomic ,assign) CGFloat targetValue;
///指定滑块纵坐标，有限制范围是可以使滑块边界始终在当前控件内的中心范围
@property (nonatomic ,assign) CGFloat thumbCenterY;
///是否使用随机验证点，默认为Yes
@property (nonatomic ,assign) BOOL useRandomValue;
///验证容差，验证时允许的距离误差，有效值为自然数。若不指定，默认为3
@property (nonatomic ,assign) CGFloat tolerance;

/**
 以下分别为验证成功及失败后动画，动画为thumbLayer的动画
 */
///成功动画
@property (nonatomic ,strong) CAAnimation * successAnimation;

///失败动画
@property (nonatomic ,strong) CAAnimation * failAnimation;

///代理
@property (nonatomic ,weak) id<DWSlideCaptchaDelegate> delegate;

/**
 滑块验证的背景图片
 */
///背景图片
@property (nonatomic ,strong) UIImage * bgImage;

/**
 验证相关
 */
///验证成功
@property (nonatomic ,assign ,readonly ,getter = isSuccessed) BOOL successed;

///正在配置参数
@property (nonatomic ,assign ,readonly ,getter = isConfigurating) BOOL configurating;

///是否验证过
@property (nonatomic ,assign ,readonly ,getter = isIndentified) BOOL indentified;


/**
 初始化方法

 @param frame 尺寸
 @param bgImage 背景图片
 @return 实例
 */
-(instancetype)initWithFrame:(CGRect)frame bgImage:(UIImage *)bgImage;


/**
 改变滑块位置至指定点

 @param point 目标点
 @param animated 是否需要动画
 */
-(void)moveToPoint:(CGPoint)point animated:(BOOL)animated;


/**
 改变滑块位置到指定值

 @param value 指定值
 @param animated 是否需要动画
 
 注：纵坐标为验证点纵坐标
 */
-(void)setValue:(CGFloat)value animated:(BOOL)animated;


/**
 验证当前是否通过验证

 @param animated 验证是否需要动画
 @param result 验证结果
 */
-(void)indentifyWithAnimated:(BOOL)animated result:(void(^)(BOOL success))result;



/**
 开始配置参数
 
 注：开始所有属性，若不调用此方法，则所有属性修改并不会生效
 */
-(void)beginConfiguration;


/**
 提交配置参数
 
 注：是否提交属性并不影响属性值是否赋值成功，但提交属性后，视图会跟随做相关调整
 */
-(void)commitConfiguration;


/**
 重新配置滑动验证
 
 注：重新设置一些必要参数
 */
-(void)reset;


/**
 展示滑块

 @param animated 是否需要动画
 */
-(void)showThumbWithAnimated:(BOOL)animated;


/**
 隐藏滑块

 @param animated 是否需要动画
 */
-(void)hideThumbWithAnimated:(BOOL)animated;

@end



/**
 默认滑动验证视图
 
 提供默认效果的活动验证视图，主要向使用者提供封装思路
 */
@interface DWDefaultSlideCaptchaView : UIView<DWSlideCaptchaDelegate>

///默认滑块
@property (nonatomic ,strong) UISlider * slider;

///验证视图
@property (nonatomic ,strong) DWSlideCaptchaView * captchaView;

///验证回调
@property (nonatomic ,copy) void (^indentifyCompletion)(BOOL success);

///实例化方法
-(instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image slider:(UISlider *)slider;

@end
