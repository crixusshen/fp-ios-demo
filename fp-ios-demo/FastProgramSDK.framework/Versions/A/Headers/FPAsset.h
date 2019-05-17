//
//  FPAsset.h
//  FastProgram
//
//  Created by dfzq on 2018/12/21.
//  Copyright © 2018 www.orientsec.com.cn. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface FPAsset: NSObject

// 初始化，通过发布平台颁布的fpid(唯一标识任何一个快程序应用)
-(instancetype)initWithFPId:(NSString *)fpid;
    
// 处理bundle脚本前的预准备，一般用于根据脚本版本来检查是否需要更新的相关操作
-(void) bundlePrepare:(void(^)(BOOL))complete;

// 获取html路径地址
-(NSString *) obtainHtmlPath;

// 获取base.bundle buffer
-(NSData *) obtainBaseScript;

// 获取business.bundle buffer
-(NSData *) obtainBundleScript:(NSString *)path;

// 获取business.css buffer
-(NSString *) obtainBundleCss:(NSString *)path;

// 获取manifest buffer
-(NSData *) obtainManifest;

// 获取file buffer
-(NSData *) obtainFile:(NSString *)file;

@end
