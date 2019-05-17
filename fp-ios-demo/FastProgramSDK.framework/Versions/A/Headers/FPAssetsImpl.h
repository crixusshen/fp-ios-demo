//
//  FPAssetsImpl.h
//  FastProgram
//
//  Created by dfzq on 2019/01/02.
//  Copyright © 2019 www.orientsec.com.cn. All rights reserved.
//

#import "FPAsset.h"

@interface FPAssetsImpl: FPAsset

// bundle prepare
-(void) bundlePrepare:(void(^)(BOOL))complete;

// html path
-(NSString *) obtainHtmlPath;

// base script
-(NSData *) obtainBaseScript;

// bundle script
-(NSData*) obtainBundleScript:(NSString*)path;

//bundle css
-(NSString*) obtainBundleCss:(NSString*)path;

// manifest buffer
-(NSData *) obtainManifest;

// obtain file
-(NSData*) obtainFile:(NSString*)file;


@end
