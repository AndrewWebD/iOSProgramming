//
//  EmptyAppViewController.m
//  EmptyApp
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "EmptyAppViewController.h"

@interface EmptyAppViewController ()

@end

@implementation EmptyAppViewController

-(IBAction)btnClicked:(id)sender
{
    //---add the view of the view controller to the current view---
    if(secondViewController == nil) {
        secondViewController =
        [[SecondViewController alloc] initWithNibName:@"SecondViewController"
                                               bundle:nil];
    }
    [UIView transitionWithView:self.view
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromRight |
                    UIViewAnimationOptionLayoutSubviews |
                    UIViewAnimationOptionAllowAnimatedContent
                    animations:^ {
                        [self.view addSubview:secondViewController.view];
                    }
                    completion:NULL];
    
}

-(void) dealloc {
    [secondViewController release];
    [super dealloc];
}
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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
