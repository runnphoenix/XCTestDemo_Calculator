//
//  ViewController.m
//  Calculator
//
//  Created by workMac on 15/8/29.
//  Copyright (c) 2015年 Gree. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController{
    Calculator *_calculator;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _calculator = [[Calculator alloc]init];
}

- (double)perimeterOfRectangleWithLength:(double)length andWidth:(double)width {
    return  [_calculator productOfNumber:2 andNumber:[_calculator sumOfNumber:length andNumber:width]];
}

@end
