//
//  BPKit.m
//  BPKit
//
//  Created by Jeffrey Sambells on 2013-03-09.
//  Copyright (c) 2013 NSBoilerplate.com. All rights reserved.
//

#import "BPKit.h"

@implementation BPKit

+ (void)fadeDefaultImageForDuration:(float)duration inWindow:(UIWindow *)window
{
    UIImage *image = [UIImage imageNamed:@"Default"];
    UIImageView *splash = [[UIImageView alloc] initWithImage:image];
    [splash setFrame:window.frame];
    if (![UIApplication sharedApplication].statusBarHidden) {
        [splash setFrame:CGRectOffset(splash.frame, 0, -[UIApplication sharedApplication].statusBarFrame.size.height)];
    }
    [window.rootViewController.view addSubview:splash];
    [UIView animateWithDuration:.45f
                     animations:^{
                         [splash setAlpha:0.f];
                     }
                     completion:^(BOOL finished){
                         [splash removeFromSuperview];
                     }];
}

@end
