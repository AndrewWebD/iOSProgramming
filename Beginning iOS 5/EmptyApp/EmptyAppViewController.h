//
//  EmptyAppViewController.h
//  EmptyApp
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface EmptyAppViewController : UIViewController
{
    //---create an instance of the view controller
    SecondViewController *secondViewController;
}

-(IBAction) btnClicked: (id) sender;

@end
