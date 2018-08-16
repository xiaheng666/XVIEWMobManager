//
//  UMAnalyzeManager.m
//  UMAnalyzeManager
//
//  Created by yyj on 2018/8/1.
//  Copyright © 2018年 zd. All rights reserved.
//

#import "UMAnalyzeManager.h"
#import <UMMobClick/MobClick.h>
@implementation UMAnalyzeManager
+ (instancetype)defaultUMAnalyzeManager{
    static UMAnalyzeManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[UMAnalyzeManager alloc]init];
    });
    return manager;
}
/*
 *  NewXVIEW开发平台注册的appKey
 *  key 密钥
 */
- (void)initWithDict:(NSDictionary*)dict{
    UMAnalyticsConfig *config = [UMAnalyticsConfig sharedInstance];
    config.appKey = dict[@"key"];
    [MobClick startWithConfigure:config];
}
@end
