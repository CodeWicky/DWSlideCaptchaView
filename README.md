<p align="center" >
<font size="20">DWSlideCaptchaView</font>
</p>

<p align="center" >
  <img src="https://github.com/CodeWicky/DWSlideCaptchaView/raw/master/%E5%8A%A8%E7%94%BB%E5%B1%95%E7%A4%BA.gif" alt="DWSlideCaptchaView" title="DWSlideCaptchaView">
</p>

## Description
This is a Class help you to build a slide Captcha Quickly.

Use the basic class DWSlideCaptchaView you can customsize the bgImage/thumpShape/identifyPoint/successAnimation/failAnimation.

By the way I provide two protocol method which may be called when the identifyAnimation willStart and didFinished.You can use these two method to customsize you captchaView better.

If you want you combine the CaptchaView with a slider(usually you may use a slider to change the value of thumb,you may also use -touchBegan to move it to point) just use The DWDefaultSlideCaptchaView or customsize it as you want.

When you are customsizing the captchaView you may just focus on how the set the thumb currentPoint and when should you do the identify.You can easily find it in DWDefaultSlideCaptchaView.

## 描述
这是一个可以帮你快速集成滑动验证功能的类。

使用我提供的基础类，DWSlideCaptchaView，你可以定制验证视图中背景图片/滑块形状/验证点/验证成功动画/验证失败动画。

顺带一提的是，我提供了两个协议方法，他们分别将在验证的动画即将开始和动画已经结束时被调用。你可以借助这两个代理方法更好的定制你的验证视图。

如果你想将验证视图与一个滑块组合在一起（通常是有滑块去改变验证滑块的位置，当然你也可以通过 -touchBegan 方法控制验证滑块的位置），你可以使用 DWDefaultSlideCaptchaView 或者 按照你自己的想法去定制他。

当你要定制一个验证视图是，你只需要关心如何改变验证滑块的位置以及触发验证方法的时机。你可以在 DWDefaultSlideCaptchaView 中轻松的找到相关实现，当然我只是提供了一个简单的思路。


## Usage
Firstly,drag it into your project or use cocoapods.

	pod 'DWSlideCaptchaView'


To use the DWSlideCaptchaView,you may just need to know at least three API

	///To get an instance of it.
    -(instancetype)initWithFrame:(CGRect)frame bgImage:(UIImage *)bgImage;

	///Move the thumb
	-(void)moveToPoint:(CGPoint)point animated:(BOOL)animated

	///Identify and get an result In the block
	-(void)indentifyWithAnimated:(BOOL)animated result:(void(^)(BOOL success))result
	
With these three Method you can implement the Captcha.

To use it in anyway you could change same of the property to modify its perform.**But what you should pay attention to is you should use `-beginConfigration` before set value to property and `-commitConfigration` after set value to property otherwise the new property will not be set or worked**.

As said above,there are two protocol method that tell you the identifyAnimation's status,use it to customsize you captchaView.And follow the thought of DWDefaultSlideCaptchaView to create your own captchaView.


## 如何使用
首先，你应该将所需文件拖入工程中，或者你也可以用Cocoapods去集成他。

	pod 'DWSlideCaptchaView'
	
当使用DWSlideCaptchaView的时候，你最少只使用三个方法就能实现滑动验证功能。

	///获得实例
    -(instancetype)initWithFrame:(CGRect)frame bgImage:(UIImage *)bgImage;

	///改变滑块的位置
	-(void)moveToPoint:(CGPoint)point animated:(BOOL)animated

	///验证当前滑块位置并在Block中获取到验证结果
	-(void)indentifyWithAnimated:(BOOL)animated result:(void(^)(BOOL success))result
	
借助这三个方法你完全可以实现滑动验证。

当然，为了更加多元化的使用它，你可以通过修改一些属性来让他更加适合你的需求。**但是，一定要记得，在改变属性之前，调用`-beginConfigration`方法，并在改变属性之后调用`-commitConfigration`方法，否则属性将不会被赋值或者不会奏效**。


## Contact With Me

You may issue me on [my Github](https://github.com/CodeWicky/DWSlideCaptchaView) or send me a email at [codeWicky@163.com]() to tell me some advices or the bug,I will be so appreciated.

If you like it please give a star.

## 联系作者
你可以通过在[我的Github](https://github.com/CodeWicky/DWSlideCaptchaView)上给我留言或者给我发送电子邮件[codeWicky@163.com]()来给我提一些建议或者指出我的bug,我将不胜感激。

如果你喜欢这个小东西，记得给我一个star吧，么么哒~

