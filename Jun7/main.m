//
//  main.m
//  Jun7
//
//  Created by Dominick Ciano on 6/1/12.
//  Copyright (c) 2012 Abel / Noser Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Jun7AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSLog(@"Project:Jun7 - First HW project in Objective-C for INFO1-CE9236 class.");
        NSLog(@"This app makes use of the NSLog examples provided in objective.html.");
        NSLog(@"Author:Dominick Ciano");
        NSLog(@" ");
        int i = 10;
		NSLog(@"The value of i is %d.", i);
        NSLog(@"The address of i is %p.", &i);			//p for pointer
        NSLog(@"The number of bytes in i is %zu.", sizeof i);	//u for unsigned
        
        CGFloat f = 3.14159;
        NSLog(@"The value of f is %g.", f);			//g for CGFloat and double (important)
        NSLog(@"The address of f is %p.", &f);			//p for pointer
        NSLog(@"The number of bytes in f is %zu.", sizeof f);	//u for unsigned
        /*
         CHAR_BIT is the number of bits per byte;
         sizeof (CGFloat) is the number of bytes per CGFloat.
         Their product is the number of bits per CGFloat.
         */
        
        NSLog(@"On my device, a CGFloat occupies %zu bits.",
              CHAR_BIT * sizeof (CGFloat));
        
        NSString *s = @"How are you?";
		NSLog(@"The value of s is %@.", s);
        
        //Pass three arguments to NSLog.
        CGPoint p = CGPointMake(0.0, 0.0);
        NSLog(@"p == (%g, %g)", p.x, p.y);			//g for CGFloat and double
        
        CGSize s2 = CGSizeMake(320.0, 480.0);
        NSLog(@"s2 == %g × %g", s2.width, s2.height);
        
        //Pass five arguments to NSLog.
        CGRect r = CGRectMake(0.0, 0.0, 320.0, 480.0);
        NSLog(@"r == (%g, %g), %g × %g",
              r.origin.x,
              r.origin.y,
              r.size.width,
              r.size.height
              );
        
        //Call the sqrt function.  Store its return value (1.414213562373115) into s3.
        double s3 = sqrt(2.0);
        
        NSLog(@"The square root of 2.0 is %g.", s3);
        //There is only one object of class UIDevice, and it already
		//exists.  Get the address of this object.
		UIDevice *device = [UIDevice currentDevice];
        
		NSString *version = device.systemVersion;
		NSLog(@"The version of iOS is %@.", version);
        //There is only one object of class UIScreen, and it already
		//exists.  Get the address of this object.
		UIScreen *screen = [UIScreen mainScreen];
        
		CGRect bounds = [screen bounds];
		NSLog(@"Origin is (%g, %g), dimensions are %g by %g.", 
              bounds.origin.x, bounds.origin.y,
              bounds.size.width, bounds.size.height
              );
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([Jun7AppDelegate class]));
    }
}
