//
//  FPMPViewControllerDelegate.h
//  FastProgram
//
//  Created by dfzq on 2018/12/22.
//  Copyright © 2018 www.orientsec.com.cn. All rights reserved.
//

//#import "FPInct.h"

@class FPMPViewController;
@protocol FPMPViewControllerDelegate<NSObject>

// 通常返回一个自实现的加载动画组件
-(UIView*) buildLoadingAnimationView:(FPMPViewController*)vc;

// bundle脚本是否准备就绪的回调
-(void) prepareBundle:(BOOL)success vc:(FPMPViewController*)vc;

// manifest文件获取失败时会回调该委托函数
-(void) parserManifestFail:(FPMPViewController*)vc;

@end
