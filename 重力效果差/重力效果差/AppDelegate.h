//
//  AppDelegate.h
//  重力效果差
//
//  Created by Alan on 2019/3/28.
//  Copyright © 2019 zhaixingzhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

