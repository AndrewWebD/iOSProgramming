//
//  KeyboardInputsViewController.h
//  KeyboardInputs
//
//  Created by Andrew Wilson on 2/12/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyboardInputsViewController : UIViewController
{
    IBOutlet UITextField *textField;
}

@property (nonatomic, retain) UITextField *textField;

-(IBAction)doneEditing:(id)sender;
-(IBAction)bgTouched:(id)sender;

@end
