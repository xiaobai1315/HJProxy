//
//  ViewController.m
//  CCB_demo_FT
//
//  Created by Jermy on 2018/7/18.
//  Copyright © 2018年 Jermy. All rights reserved.
//

#import "ViewController.h"
#import "HJProxy.h"
#import "HJProxy1.h"

@interface ViewController ()

@property (nonatomic, strong)NSTimer *timer;

@property (nonatomic, strong) CADisplayLink *link;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    HJProxy1 *proxy = [HJProxy1 proxyWithTarget:self];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:proxy selector:@selector(showMsg) userInfo:nil repeats:YES];
    
    self.link = [CADisplayLink displayLinkWithTarget:proxy selector:@selector(show)];
    
}

- (void)showMsg
{
    NSLog(@"%s", __func__);
}

-(void)dealloc
{
    NSLog(@"%s", __func__);
    [self.timer invalidate];
}

@end
