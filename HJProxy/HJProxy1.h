//
//  HJProxy1.h
//  CCB_demo_FT
//
//  Created by Jermy on 2018/7/18.
//  Copyright © 2018年 Jermy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HJProxy1 : NSProxy

+(instancetype)proxyWithTarget:(id)target;

@end
