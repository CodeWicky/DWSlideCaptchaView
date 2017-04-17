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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DWDefaultSlideCaptchaView * cap = [[DWDefaultSlideCaptchaView alloc] initWithFrame:CGRectMakeWithPointAndSize(CGPointZero, CGSizeMake(400, 300)) image:DWImage(@"2.jpg") slider:nil];
    cap.indentifyCompletion = ^(BOOL success) {
        NSLog(@"Identify %@",(success ? @"success" : @"fail"));
    };
    [self.view addSubview:cap];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
