//
//  BPKit.h
//  BPKit
//
//  Created by Jeffrey Sambells on 2013-03-09.
//  Copyright (c) 2013 NSBoilerplate.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BPKit : NSObject

/** @name UI Helpers */

/**
 Takes the Default startup screen and fades it to alpha 0.
 
 This methods uses [UIImage imageNamed:@"Default"] to retrieve the default images based on
 Device type and resolution.
 
 @param duration The duration of the fade in seconds. NOTE: short fades may not appear when the debugger is enabled.
 @param window Pointer to the key window, usually self.indoe in the appDelegate.
 */
+ (void)fadeDefaultImageForDuration:(float)duration inWindow:(UIWindow *)window;

@end
