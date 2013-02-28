//
//  MyiPhoneAppViewController.m
//  MyiPhoneApp
//
//  Created by Andrew Wilson on 2/12/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "MyiPhoneAppViewController.h"

@interface MyiPhoneAppViewController ()

@end

@implementation MyiPhoneAppViewController

- (void)viewDidLoad
{
#if (__IPHONE_OS_VERSION_MAX_ALLOWED >= 30200)
    
    NSString *str;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        str = @"Running as an iPad application";
    } else {
        str = @"Running as an iPhone/iPod touch appplication";
    }
    
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"Platform"
                               message:str
                              delegate:nil
                     cancelButtonTitle:@"OK"
                     otherButtonTitles:nil];
    
    [alert show];
    [alert release];
    
#endif
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
