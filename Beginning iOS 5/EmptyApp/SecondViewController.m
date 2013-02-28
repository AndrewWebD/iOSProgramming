//
//  SecondViewController.m
//  EmptyApp
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //---create a CGRect for the positioning---
    CGRect frame = CGRectMake(20, 10, 280, 50);
    
    //---create a label view---
    label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = UITextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Verdana" size:20];
    label.text = @"This is a label";
    label.backgroundColor = [UIColor lightGrayColor];
    
    //---create a Button view---
    frame = CGRectMake(20, 60, 280, 50);
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:@"OK" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor clearColor];
    
    //---add the action handler and set the current class as target---
    [button addTarget:self
     action:@selector(buttonClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //---add the views to the View window---
    [self.view addSubview:label];
    [self.view addSubview:button];
        
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)buttonClicked:(id)sender {
    /*
     UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"Action invoked!"
                               message:@"Button Clicked!"
                              delegate:self
                     cancelButtonTitle:@"OK"
                     otherButtonTitles: nil];
    
    [alert show];
    [alert release];
    
    */
    [UIView transitionWithView:self.view.superview
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft  |
                                        UIViewAnimationOptionLayoutSubviews |
                                        UIViewAnimationOptionAllowAnimatedContent
                    animations:^ {
                        //---remove the current view; essentially hiding the view---
                        [self.view removeFromSuperview];
                    }
                    completion:NULL];
}

-(void) dealloc {
    [label release];
    [button release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
