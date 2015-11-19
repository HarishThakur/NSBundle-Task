//
//  EmployeeListTableViewController.m
//  NSBundle Task
//
//  Created by Harish Singh on 18/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "EmployeeListTableViewController.h"

@interface EmployeeListTableViewController () {
    NSDictionary *dictionaryForEmployeeData;
    EmployeeDetailsController *empDetailsVC;
}

@end

@implementation EmployeeListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dictionaryForEmployeeData = [[NSDictionary alloc]init];
    _arrayForEmpList = [[NSArray alloc]init];
    _employeeInfo = [[EmployeeInfo alloc]init];
    self.arrayForEmpList = [self.employeeInfo getListOfEmployee];
    
    [self.employeeListTableView registerClass:[EmployeeListTableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.employeeListTableView registerNib:[UINib nibWithNibName:NSStringFromClass([EmployeeListTableViewCell class]) bundle:nil] forCellReuseIdentifier:@"EmployeeListTableViewCell"];
    
    self.employeeListTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.arrayForEmpList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    EmployeeListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeListTableViewCell" forIndexPath:indexPath];
    dictionaryForEmployeeData = self.arrayForEmpList[indexPath.row];
    cell.lblEmployeeName.text = dictionaryForEmployeeData[@"name"];
    cell.imgEmployee.image = [UIImage imageNamed:dictionaryForEmployeeData[@"image"]];
    //cell.textLabel.text = employeeName;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"employeeDetails" sender:[self.employeeListTableView cellForRowAtIndexPath:indexPath]];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //EmployeeListTableViewCell
    
    NSLog(@"Sender %@",sender);
    EmployeeListTableViewCell *selectedCell = (EmployeeListTableViewCell *)sender;
    NSIndexPath *selectedIndexPath = [self.employeeListTableView indexPathForCell:selectedCell];
    
    if ([segue.identifier isEqualToString:@"employeeDetails"])
    {
        empDetailsVC = (EmployeeDetailsController*)[segue destinationViewController];
        empDetailsVC.employeeDetail = self.arrayForEmpList[(int)selectedIndexPath.row];
    }

}


@end
