//
//  MyDelegateImpl.m
//  fp-ios-demo
//
//  Created by dfzq on 2019/5/17.
//  Copyright © 2019 dfzq. All rights reserved.
//
#import <FastProgramSDK/FastProgramSDK.h>

#import "FPMyDelegateImpl.h"

@interface FPMyDelegateImpl()<FPMPViewControllerDelegate>

@property (nonatomic, strong) FPLoadingViewImpl* loadingView;

@end

@implementation FPMyDelegateImpl

// 启动界面，不要定义为强指针类型
-(UIView*) buildLoadingAnimationView:(FPMPViewController*)vc{
    // 也可以是你自定义的一个加载UIView视图，这里采用FP默认提供的FPLoadingViewImpl实现
    _loadingView = [[FPLoadingViewImpl alloc] init];
    return _loadingView;
}

// 基础包、业务包全部加载完毕时
-(void) prepareBundle:(BOOL)success vc:(FPMPViewController*)vc{
    NSLog(@"prepareBundle successful");
}

// manifest文件解析失败时
-(void) parserManifestFail:(FPMPViewController*)vc{
    NSLog(@"parserManifest failure");
}

@end
