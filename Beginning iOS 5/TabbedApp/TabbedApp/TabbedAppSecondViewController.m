//
//  TabbedAppSecondViewController.m
//  TabbedApp
//
//  Created by Andrew Wilson on 2/12/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "TabbedAppSecondViewController.h"

@interface TabbedAppSecondViewController ()

@end

@implementation TabbedAppSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
