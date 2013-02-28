//
//  ScrollerViewController.m
//  Scroller
//
//  Created by Andrew Wilson on 2/12/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "ScrollerViewController.h"

@interface ScrollerViewController ()

@end

@implementation ScrollerViewController

@synthesize scrollView;

- (void)viewDidLoad
{
    scrollView.frame = CGRectMake(0, 0, 320, 460);
    [scrollView setContentSize:CGSizeMake(320, 987)];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) dealloc {
    [scrollView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//---before the View windown appears---
-(void) viewWillAppear:(BOOL)animated {
    //---registers the notifications for keyboard---
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(keyboardDidShow:)
     name:UIKeyboardDidShowNotification
     object:self.view.window];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(keyboardDidHide:)
     name:UIKeyboardDidHideNotification
     object:nil];
    [super viewWillAppear:animated];
}

//---when a text field begins editing---
-(void) textFieldDidBeginEditing: (UITextField *) textFieldView {
    currentTextField =textFieldView;
}

//---when the user taps on the retunr key on the keyboard---
-(BOOL) textFieldShouldReturn: (UITextField *) textFieldView {
    [textFieldView resignFirstResponder];
    return NO;
}

//---when a textfield view is done editing---
-(void) keyboardDidShow: (NSNotification *) notification {
    if(keyboardIsShown) return;
    
    NSDictionary* info = [notification userInfo];
    
    //---obtain the size of the keyboard---
    NSValue *aValue =
    [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect =
    [self.view convertRect:[aValue CGRectValue] fromView:nil];
    
    NSLog(@"%f", keyboardRect.size.height);
    
    //---resize the scroll view (view keyboard)---
    CGRect viewFrame = [scrollView frame];
    viewFrame.size.height -= keyboardRect.size.height;
    
    scrollView.frame = viewFrame;
    
    //---scroll to the current text field---
    CGRect textFieldRect = [currentTextField frame];
    [scrollView scrollRectToVisible:textFieldRect animated:YES];
    
    keyboardIsShown = YES;
}

//---when the keyboard disappears---
-(void) keyboardDidHide: (NSNotification *) notification {
    NSDictionary* info = [notification userInfo];
    
    //---obtain the size of the keyboard---
    NSValue *aValue =
    [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect =
    [self.view convertRect:[aValue CGRectValue] fromView:nil];
    
    //---resize the scroll view back to the original size
    // (without keyboard)---
    CGRect viewFrame = [scrollView frame];
    viewFrame.size.height += keyboardRect.size.height;
    scrollView.frame = viewFrame;
    
    keyboardIsShown = NO;
}

//---before the View window disappears---
-(void) viewWillDisappear:(BOOL)animated {
    //---removes the notification for keyboard---
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:UIKeyboardDidShowNotification
     object:nil];
    
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:UIKeyboardDidHideNotification
     object:nil];
    
    [super viewWillDisappear:animated];
}

@end
