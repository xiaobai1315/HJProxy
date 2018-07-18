//
//  HJProxy.m
//  CCB_demo_FT
//
//  Created by Jermy on 2018/7/18.
//  Copyright © 2018年 Jermy. All rights reserved.
//

#import "HJProxy.h"

@interface HJProxy()
@property (weak, nonatomic) id target;
@end

@implementation HJProxy

+(instancetype)proxyWithTarget:(id)target
{
    HJProxy *proxy = [[HJProxy alloc] init];
    proxy.target = target;
    return proxy;
}

-(id)forwardingTargetForSelector:(SEL)aSelector
{
    return self.target;
}

@end
