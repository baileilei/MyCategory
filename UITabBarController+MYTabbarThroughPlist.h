//
//  UITabBarController+MYTabbarThroughPlist.h
//  支付宝
//
//  Created by baishangshang on 16/7/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (MYTabbarThroughPlist)

+(UIViewController *)loadTabBarSubViewControllerWithClassName:(NSString *)className title:(NSString*)title tabBarImageName:(NSString *)tabbarImageName tabBarSelImageName:(NSString *)tabBarSelImageName;

@end
