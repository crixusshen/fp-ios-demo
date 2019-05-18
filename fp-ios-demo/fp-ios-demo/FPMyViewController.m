//
//  ViewController.m
//  fp-ios-demo
//
//  Created by dfzq on 2019/5/17.
//  Copyright © 2019 dfzq. All rights reserved.
//
#import <FastProgramSDK/FastProgramSDK.h>

#import "FPMyViewController.h"
#import "FPMyDelegateImpl.h"

@interface FPMyViewController ()

@property (nonatomic, strong) FPAssetsImpl* asset;
@property (nonatomic, strong) FPMyDelegateImpl* delegateImpl;
@property (nonatomic, strong) FPMPViewNavController* saveTaskVc;

@end

// FPID由发布平台颁发，代表每个单一业务和快程序应用程序的唯一标识
NSString *const FPID = @"9f88a36b-a197-41fb-893d-32a10b4da8d7";

@implementation FPMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 定义一个热启动按钮
    UIButton *btn1 = [UIButton new];
    [btn1 setTitle:@"热启动(8秒)" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(clickSampleA:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 setBackgroundColor:[UIColor grayColor]];
    [btn1 setFrame:CGRectMake(100, 100, 200, 40)];
    [self.view addSubview:btn1];
    
    // 定义一个冷启动按钮
    UIButton *btn2 = [UIButton new];
    [btn2 setTitle:@"冷启动" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(clickSampleB:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 setBackgroundColor:[UIColor grayColor]];
    [btn2 setFrame:CGRectMake(100, 200, 200, 40)];
    [self.view addSubview:btn2];
}

- (void)clickSampleA:(UIButton *)button {
    NSLog(@"to View SamlpeA ...");
    
    if (_saveTaskVc == nil) {
        _asset = [[FPAssetsImpl alloc] initWithFPId:FPID];
        _delegateImpl = [[FPMyDelegateImpl alloc] init];
        FPMPViewNavController* vc = [FPMPViewNavController alloc];
        vc = [vc init:_asset delegate:_delegateImpl];
        
        _saveTaskVc = vc;
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:8 repeats:NO block:^(NSTimer * _Nonnull timer) {
            _saveTaskVc = nil;
            timer = nil;
            [timer invalidate];
        }];
    }
    
    [self presentViewController:_saveTaskVc animated:YES completion:^{
    }];
}

- (void)clickSampleB:(UIButton *)button {
    NSLog(@"to View SamlpeB ...");
    
    _asset = [[FPAssetsImpl alloc] initWithFPId:FPID];
    _delegateImpl = [[FPMyDelegateImpl alloc] init];
    FPMPViewNavController* vc = [FPMPViewNavController alloc];
    vc = [vc init:_asset delegate:_delegateImpl];
    
    [self presentViewController:vc animated:YES completion:^{
    }];
}

@end
