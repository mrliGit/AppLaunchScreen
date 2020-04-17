//
//  UIApplication+LaunchScreen.m
//  App
//
//  Created by 小仙女的MacBook on 2020/3/18.
//  Copyright © 2020 LongCaiJiTuan. All rights reserved.
//

#import "UIApplication+LaunchScreen.h"

//#import <AppKit/AppKit.h>


@implementation UIApplication (LaunchScreen)


-(void)clearLaunchScreenCache{
    NSError *error;
    [NSFileManager.defaultManager removeItemAtPath:[NSString stringWithFormat:@"%@/Library/SplashBoard",NSHomeDirectory()] error:&error];
    if (error) {
        NSLog(@"Failed to delete launch screen cache: %@",error);
    }
}


@end
