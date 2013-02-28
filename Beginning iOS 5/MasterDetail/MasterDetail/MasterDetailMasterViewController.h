//
//  MasterDetailMasterViewController.h
//  MasterDetail
//
//  Created by Andrew Wilson on 2/7/13.
//  Copyright (c) 2013 Andrew Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MasterDetailDetailViewController;

@interface MasterDetailMasterViewController : UITableViewController
{
    NSMutableArray *listOfMovies;
}

@property (strong, nonatomic) MasterDetailDetailViewController *detailViewController;

@end
