//
//  ScrollerViewController.h
//  Scroller
//
//  Created by Andrew Wilson on 2/12/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollerViewController : UIViewController
{
    IBOutlet UIScrollView *scrollView;
    
    UITextField *currentTextField;
    BOOL keyboardIsShown;
}

@property (nonatomic, retain) UIScrollView *scrollView;

@end
