//
//  ViewController.m
//  Hashing_test
//
//  Created by Admin on 2017/8/15.
//  Copyright © 2017年 DYDF. All rights reserved.
//

#import "ViewController.h"

#import "NSString+Hashing.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = @"test";
    
    NSString *hashStr = [string hashWithType:NJHashTypeMD5];
    
    NSLog(@"%@",hashStr);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
