//
//  EmployeeListTableViewController.h
//  NSBundle Task
//
//  Created by Harish Singh on 18/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeInfo.h"
#import "EmployeeDetailsController.h"
#import "EmployeeListTableViewCell.h"

@interface EmployeeListTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *employeeListTableView;
@property (strong,nonatomic) NSArray *arrayForEmpList;
@property EmployeeInfo *employeeInfo;

@end
