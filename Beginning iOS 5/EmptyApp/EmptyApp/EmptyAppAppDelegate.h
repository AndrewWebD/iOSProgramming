//
//  EmptyAppAppDelegate.h
//  EmptyApp
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EmptyAppViewController;

@interface EmptyAppAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) EmptyAppViewController *viewController;

@end
