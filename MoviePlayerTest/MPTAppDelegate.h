//
//  MPTAppDelegate.h
//  MoviePlayerTest
//
//  Created by Christian Netthöfel on 27.09.12.
//  Copyright (c) 2012 Christian Netthöfel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MPTViewController;

@interface MPTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MPTViewController *viewController;

@end
