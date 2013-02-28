//
//  DynamicViewsViewController.m
//  DynamicViews
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "DynamicViewsViewController.h"

@interface DynamicViewsViewController ()

@end

@implementation DynamicViewsViewController

- (void)viewDidLoad
{
    //---create a UIView object---
    UIView *view =
    [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    //---set the background color to light gray---
    view.backgroundColor = [UIColor lightGrayColor];
    
    //---create a Label view---
    CGRect frame = CGRectMake(10, 15, 300, 20);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Verdana" size:20];
    label.text = @"This is a label";
    label.tag = 1000;
    
    //---create a Button view---
    frame = CGRectMake(10, 30, 300, 50);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:@"Click Me, Please!" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor clearColor];
    button.tag = 2000;
    [button addTarget:self
               action:@selector(buttonClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:label];
    [view addSubview:button];
    [view exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
    
    for(int i =0; i<[view.subviews count]; ++i) {
        UIView *v = [view.subviews objectAtIndex:i];
        NSLog(@"%d", v.tag);
    }
    
    self.view = view;
    
    [label release];
    [view release];
    
    [self printViews:self.view];
    [super viewDidLoad];
}

-(IBAction)buttonClicked:(id)sender {
    UIAlertView *alert =
        [[UIAlertView alloc] initWithTitle:@"Action invoked!"
                                   message:@"Button Clicked!"
                                  delegate:self
                         cancelButtonTitle:@"OK"
                         otherButtonTitles: nil];
    
    [alert show];
    [alert release];
}

-(void) printViews: (UIView *) view {
    if([view.subviews count] > 0) {
        for(int i = 0; i < [view.subviews count]; ++i) {
            UIView *v = [view.subviews objectAtIndex:i];
            NSLog(@"View index: %d Tag: %d", i, v.tag);
            [self printViews:v];
        }
    } else
        return;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
