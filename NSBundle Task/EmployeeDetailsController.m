//
//  FirstViewController.m
//  NSBundle Task
//
//  Created by Harish Singh on 18/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "EmployeeDetailsController.h"

@interface EmployeeDetailsController ()

@end

@implementation EmployeeDetailsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"ios-backImage.jpg"]];
    
    _lblName.text = self.employeeDetail[@"name"];
    _lblEmployeeID.text = self.employeeDetail[@"employeeID"];
    _lblDesignation.text = self.employeeDetail[@"designation"];
    _lblBloodGroup.text = self.employeeDetail[@"bloodGroup"];
    _imgEmployee.image = [UIImage imageNamed:self.employeeDetail[@"image"]];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
}
- (IBAction)backButton:(id)sender {
    [[self navigationController] popToRootViewControllerAnimated:YES];
}

-(void)awakeFromNib
{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
