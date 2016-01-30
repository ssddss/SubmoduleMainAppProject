//
//  ViewController.m
//  MainAppProgram
//
//  Created by yurongde on 16/1/29.
//  Copyright © 2016年 yurongde. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "SDRequestManager.h"
#import "AFNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SDRequestManager *request = [[SDRequestManager alloc]init];
    
    NSLog(@"%@",[request requestData]);
    
    UILabel *label = [UILabel new];
    label.text = @"日";
    [self.view addSubview:label];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
