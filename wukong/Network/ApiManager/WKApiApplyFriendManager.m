//
//  WKApiApplyFriendManager.m
//  wukong
//
//  Created by liuweiqing on 16/4/12.
//  Copyright © 2016年 RT. All rights reserved.
//

#import "WKApiApplyFriendManager.h"

@implementation WKApiApplyFriendManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.validator = self;
    }
    return self;
}

- (NSString *)methodName
{
    return @"api.apply.friend";
}

- (NSString *)serviceType
{
    return @"kAXServiceWK";
}

- (RTAPIManagerRequestType)requestType
{
    return RTAPIManagerRequestTypePost;
}


#pragma mark --SharkAPIManagerValidator
- (BOOL)manager:(RTApiBaseManager *)manager isCorrectWithCallBackData:(NSDictionary *)data
{
    if ([data[@"flag"] isEqualToString:@"ok"]) {
        return YES;
    }
    return NO;
}

- (BOOL)manager:(RTApiBaseManager *)manager isCorrectWithParamsData:(NSDictionary *)data
{
    NSLog(@"%@",data);
    return YES;
}

@end
