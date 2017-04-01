//
//  HQQVideoViewController.m
//  HQQVRPlayer
//
//  Created by 黄强强 on 17/3/31.
//  Copyright © 2017年 huangqiangqiang. All rights reserved.
//

#import "HQQVideoViewController.h"
#import <HQQVRPlayer/HQQVRPlayer.h>

@interface HQQVideoViewController ()
@property (nonatomic, strong) HQQVRPlayer *vrPlayer;

@end

@implementation HQQVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.vrPlayer = [HQQVRPlayer player];
    self.vrPlayer.touchEnable = YES;
    self.vrPlayer.displayType = HQQVRDisplayTypePanorama;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"resource/testVideo.mp4" ofType:nil];
    [self.vrPlayer loadVideo:[NSURL fileURLWithPath:path]];
    [self.view addSubview:self.vrPlayer.view];
}


@end
