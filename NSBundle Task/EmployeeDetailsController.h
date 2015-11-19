//
//  FirstViewController.h
//  NSBundle Task
//
//  Created by Harish Singh on 18/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeInfo.h"

@interface EmployeeDetailsController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblEmployeeID;
@property (weak, nonatomic) IBOutlet UILabel *lblDesignation;
@property (weak, nonatomic) IBOutlet UILabel *lblBloodGroup;
@property (weak, nonatomic) IBOutlet UIImageView *imgEmployee;

@property EmployeeInfo *employeeInfo;
@property (retain, nonatomic) NSDictionary *employeeDetail;

@end

