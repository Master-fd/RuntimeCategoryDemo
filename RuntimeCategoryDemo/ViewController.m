//
//  ViewController.m
//  RuntimeCategoryDemo
//
//  Created by asus on 16/7/19.
//  Copyright (c) 2016年 asus. All rights reserved.
//

#import "ViewController.h"
#import "FDTestModel+FDCategory.h"



@interface ViewController ()

- (IBAction)ReadBtnDidClick:(id)sender;

- (IBAction)WriteBtnDidClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *lab;

@property (nonatomic, strong) FDTestModel *testModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    FDLog(@"通过关联属性给分类添加成员变量");
    self.lab.text = self.testModel.testStr;
}

- (IBAction)ReadBtnDidClick:(id)sender {
    
    
    self.lab.text = self.testModel.testStr;
    
}

- (IBAction)WriteBtnDidClick:(id)sender {

    self.testModel.testStr = self.textField.text;
}

- (FDTestModel *)testModel
{
    if (!_testModel) {
        _testModel = [[FDTestModel alloc] init];
        
    }
    return _testModel;
}
@end
