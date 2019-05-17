//
//  MyDelegateImpl.m
//  fp-ios-demo
//
//  Created by dfzq on 2019/5/17.
//  Copyright © 2019 dfzq. All rights reserved.
//

#import "MyDelegateImpl.h"

@interface MyDelegateImpl()

@property (nonatomic, strong) FPLoadingViewImpl* loadingView;

@end

@implementation MyDelegateImpl

// loading animation
-(UIView*) buildLoadingAnimationView:(FPMPViewController*)vc{
    _loadingView = [[FPLoadingViewImpl alloc] init];
    return _loadingView;
}

// 基础包/业务包更新完毕
-(void) prepareBundle:(BOOL)success vc:(FPMPViewController*)vc{
    NSLog(@"prepareBundle successful");
}

// manifest fail
-(void) parserManifestFail:(FPMPViewController*)vc{
    NSLog(@"parserManifest failure");
}

@end
