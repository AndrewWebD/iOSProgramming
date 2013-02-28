//
//  UsingViewsViewController.m
//  UsingViews
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import "UsingViewsViewController.h"

@interface UsingViewsViewController ()

@end

@implementation UsingViewsViewController

@synthesize pageControl;
@synthesize imageView1, imageView2;

- (void)viewDidLoad
{
    //---Initialize the first imageview to display an image---
    [imageView1 setImage:[UIImage imageNamed:@"end.jpeg"]];
    tempImageView = imageView2;
    
    //---Make the first imageview visible and hide the second---
    [imageView1 setHidden:NO];
    [imageView2 setHidden:YES];
    
    //---add the event handler for the page control---
    [pageControl addTarget:self
                    action:@selector(pageTurning:)
          forControlEvents:UIControlEventValueChanged];
    
    prevPage = 0;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//---when the page control's value is changed---
- (void) pageTurning: (UIPageControl *) pageController {
    //---get the page number you can turn to---
    NSInteger nextPage = [pageController currentPage];
    switch(nextPage) {
        case 0:
            [tempImageView setImage:
             [UIImage imageNamed:@"end.jpeg"]];
            break;
        case 1:
            [tempImageView setImage:
             [UIImage imageNamed:@"feasibility.jpeg"]];
            break;
        case 2:
            [tempImageView setImage:
             [UIImage imageNamed:@"CarbonTubes.jpeg"]];
            break;
        case 3:
            [tempImageView setImage:
             [UIImage imageNamed:@"nanoBug.jpeg"]];
            break;
        case 4:
            [tempImageView setImage:
             [UIImage imageNamed:@"tinyNano.jpeg"]];
            break;
        default:
            break;
            
    }
    
    //---switch the two imageview views---
    if(tempImageView.tag == 0) { //---imageView1---
        tempImageView = imageView2;
        bgImageView = imageView1;
    }
    else {
        //---imageView2---
        tempImageView = imageView1;
        bgImageView = imageView2;
    }
    
    UIViewAnimationOptions transitionOption;
    
    if(nextPage > prevPage)
        //---if moving from left to right---
        transitionOption = UIViewAnimationOptionTransitionFlipFromLeft;
    else
        //---if moving from right to left---
        transitionOption = UIViewAnimationOptionTransitionFlipFromRight;
    
    //---animate by flipping the images---
    [UIView transitionWithView:tempImageView
                      duration:2.5
                       options:transitionOption
                    animations:^{
                        [tempImageView setHidden:YES];
                    }completion:NULL];
    
    [UIView transitionWithView:bgImageView
                      duration:2.5
                       options:transitionOption
                    animations:^{
                        [tempImageView setHidden:NO];
                    }completion:NULL];
    
    prevPage = nextPage;
}

- (void) dealloc {
    [pageControl release];
    [imageView1 release];
    [imageView2 release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"%d", buttonIndex);
}

@end
