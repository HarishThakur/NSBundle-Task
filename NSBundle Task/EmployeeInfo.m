//
//  EmployeeInfo.m
//  NSBundle Task
//
//  Created by Harish Singh on 18/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "EmployeeInfo.h"

@implementation EmployeeInfo

-(NSArray *)getListOfEmployee {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"EmployeeList" ofType:@"plist"];
    _arrayForListOfEmployee = [[NSMutableArray alloc] initWithContentsOfFile:path];

    return self.arrayForListOfEmployee;
}

@end
