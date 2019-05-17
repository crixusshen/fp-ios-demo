//
//  AppDelegate.h
//  fp-ios-demo
//
//  Created by dfzq on 2019/5/17.
//  Copyright © 2019 dfzq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

