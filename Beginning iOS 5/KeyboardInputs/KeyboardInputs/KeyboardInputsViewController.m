//
//  KeyboardInputsViewController.m
//  KeyboardInputs
//
//  Created by Andrew Wilson on 2/12/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "KeyboardInputsViewController.h"

@interface KeyboardInputsViewController ()

@end

@implementation KeyboardInputsViewController

@synthesize textField;

-(IBAction)bgTouched:(id)sender {
    [textField resignFirstResponder];
}

-(IBAction)doneEditing:(id)sender {
    [sender resignFirstResponder];
}

-(void) dealloc {
    [textField release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [textField becomeFirstResponder];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
