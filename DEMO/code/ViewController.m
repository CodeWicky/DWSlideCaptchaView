//
//  ViewController.m
//  code
//
//  Created by Wicky on 2017/4/12.
//  Copyright © 2017年 Wicky. All rights reserved.
//

#import "ViewController.h"
#import "UIBezierPath+DWPathUtils.h"
#import "DWSlideCaptchaView.h"
#import "UIImage+DWImageUtils.h"
#import "DWMacro.h"

@interface ViewController ()

@property (nonatomic ,strong) DWSlideCaptchaView * cap;

@end

@implementation ViewController
- (IBAction)slide:(UISlider *)sender {
    [self.cap setValue:sender.value animated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    CAShapeLayer * layer = [CAShapeLayer layer];
//    layer.bounds = CGRectMakeWithPointAndSize(CGPointZero, CGSizeMake(100, 100));
//    layer.position = self.view.center;
//    [self.view.layer addSublayer:layer];
//    layer.fillColor = [UIColor redColor].CGColor;
//    layer.fillRule = @"even-odd";
//    layer.path = puzzlePath().CGPath;
//    
//    DWSlideCaptchaView * captcha = [[DWSlideCaptchaView alloc] initWithFrame:CGRectMake(0, 0, 300, 225) bgImage:[UIImage imageNamed:@"2.jpg"]];
    DWDefaultSlideCaptchaView * captcha = [[DWDefaultSlideCaptchaView alloc] initWithFrame:CGRectMake(0, 0, 300, 257) image:DWImage(@"2.jpg") slider:nil];
    captcha.indentifyCompletion = ^(BOOL success) {
        
    };
    [self.view addSubview:captcha];
//    self.cap = captcha;
//    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
//    ani.fromValue = @1;
//    ani.toValue = @2;
//    ani.removedOnCompletion = YES;
//    ani.duration = 1;
//    [self.cap beginConfiguration];
//    self.cap.thumbShape = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 50, 50)];
////    self.cap.thumbSize = CGSizeMake(50, 50);
//    self.cap.successAnimation = ani;
//    self.cap.failAnimation = ani;
//    [self.cap commitConfiguration];
//    UIImageView * imageV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
//    [self.view addSubview:imageV];
//    imageV.contentMode = UIViewContentModeCenter;
//    imageV.center = self.view.center;
//    imageV.backgroundColor = [UIColor yellowColor];
//
//    UIImage * image = [UIImage imageNamed:@"10.jpg"];
////    image = [image dw_RescaleImageToSize:CGSizeMake(200, 200)];
//    image = [image dw_FlipVertical];
//    image = [image dw_SubImageWithRect:CGRectMake(0, 0, 100, 100)];
//    imageV.image = image;
    
//    NSThread * tre = [[NSThread alloc] initWithTarget:self selector:@selector(sayHello) object:nil];
//    [tre cancel];
//    [tre start];
    
}

-(void)sayHello {
    NSLog(@"Hello");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.cap indentifyWithAnimated:YES success:^{
//        NSLog(@"success");
//    } fail:^{
//        NSLog(@"fail");
//    }];
//    [self.cap hideThumbWithAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
