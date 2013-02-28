//
//  SecondViewController.h
//  EmptyApp
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    //---create two outlets - label and button---
    UILabel *label;
    UIButton *button;
}

//---expose the outlets as properties---
@property (nonatomic,retain) UILabel *label;
@property(nonatomic, retain) UIButton *button;

//---Declaring the IBAction---
-(IBAction)buttonClicked:(id)sender;

@end
