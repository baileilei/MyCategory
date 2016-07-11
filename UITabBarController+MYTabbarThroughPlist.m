//
//  UITabBarController+MYTabbarThroughPlist.m
//  支付宝
//
//  Created by baishangshang on 16/7/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "UITabBarController+MYTabbarThroughPlist.h"

#import "ZFBModel.h"

@interface UITabBarController ()

@property (nonatomic,strong) NSMutableArray *_controllerList;

@end

@implementation UITabBarController (MYTabbarThroughPlist)

/**
 *  通过类名,标题,和tabbar中的图片创建嵌套有系统nav的tabbarController.四个参数都是采用plist的形式配置.便于手动添加和删除.
 *
 *  @param className          <#className description#>
 *  @param title              <#title description#>
 *  @param tabbarImageName    <#tabbarImageName description#>
 *  @param tabBarSelImageName <#tabBarSelImageName description#>
 *
 *  @return <#return value description#>
 */
+(UIViewController *)loadTabBarSubViewControllerWithClassName:(NSString *)className title:(NSString*)title tabBarImageName:(NSString *)tabbarImageName tabBarSelImageName:(NSString *)tabBarSelImageName{
    
    // 根据字符串获取类型
    Class Clz = NSClassFromString(className);
    
    // 通过控制器的类型创建控制器的对象
    UIViewController* vc = [[Clz alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    vc.title = title;
    
    vc.tabBarItem.image = [UIImage imageNamed:tabbarImageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:tabBarSelImageName];
    
    return nav;
}


@end
