//
//  FPMPViewNavController.h
//  FastProgram
//
//  Created by dfzq on 2018/12/22.
//  Copyright © 2018 www.orientsec.com.cn. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "FPAsset.h"
#import "FPMPViewControllerDelegate.h"

@interface FPMPViewNavController: UINavigationController
    // 初始化资源和事件委托函数
    -(instancetype) init:(FPAsset*)asset delegate:(id<FPMPViewControllerDelegate>)delegate;
@end
