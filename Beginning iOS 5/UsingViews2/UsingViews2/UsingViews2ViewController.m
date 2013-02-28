//
//  UsingViews2ViewController.m
//  UsingViews2
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "UsingViews2ViewController.h"

@interface UsingViews2ViewController ()

@end

@implementation UsingViews2ViewController

@synthesize webView;

- (void)viewDidLoad
{
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [webView loadRequest:req];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) dealloc {
    [webView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
