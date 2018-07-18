//
//  HJProxy1.m
//  CCB_demo_FT
//
//  Created by Jermy on 2018/7/18.
//  Copyright © 2018年 Jermy. All rights reserved.
//

#import "HJProxy1.h"

@interface HJProxy1()
@property (weak, nonatomic)id target;
@end

@implementation HJProxy1

+(instancetype)proxyWithTarget:(id)target
{
    HJProxy1 *proxy = [HJProxy1 alloc];
    proxy.target = target;
    return proxy;
}

-(NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}

-(void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:self.target];
}

@end
