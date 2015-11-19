//
//  EmployeeInfo.h
//  NSBundle Task
//
//  Created by Harish Singh on 18/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmployeeInfo : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *employeeID;
@property (strong,nonatomic) NSString *designation;
@property (strong,nonatomic) NSString *bloodGroup;

@property (strong,nonatomic) NSMutableArray *arrayForListOfEmployee;
-(NSArray *)getListOfEmployee;

@end
