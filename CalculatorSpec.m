//
//  CalculatorSpec.m
//  Calculator
//
//  Created by workMac on 15/8/29.
//  Copyright (c) 2015年 Gree. All rights reserved.
//

#import "Kiwi.h" 
#import "Calculator.h"

SPEC_BEGIN(CalculatorSpec)

describe(@"Calculator", ^{
    
    context(@"Sample Test", ^{
        
        __block Calculator *calculator = nil;
        
        beforeEach(^{
            calculator = [Calculator new];
        });
        
        afterEach(^{
            calculator = nil;
        });
        
        //测试1，测试类是否存在
        it(@"Claculator Class should exist", ^{
            [[[Calculator class] shouldNot] beNil];
        });
        //测试2，测试能否初始化
        it(@"Calculator Object should be initilized", ^{
            [[calculator shouldNot] beNil];
        });
        //测试3，测试乘法运算
        it(@"should be able to multiply two numbers", ^{
            [[theValue([calculator productOfNumber:2 andNumber:3]) should] equal:theValue(6)];
        });
        
    });
});

SPEC_END
