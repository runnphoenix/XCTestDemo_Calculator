//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by workMac on 15/8/28.
//  Copyright (c) 2015年 Gree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface CalculatorTests : XCTestCase

@end

@implementation CalculatorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCalculatorClassExist {
    XCTAssertNotNil([Calculator class],@"Calculator Class Should Exist");
}

- (void)testCanCreateCalculatorObject {
    Calculator *calculator = [Calculator new];
    XCTAssertNotNil(calculator,@"Calculator Object Can Be Created");
}

- (void)testPlusFunction {
    Calculator *calculator = [Calculator new];
    double result = [calculator sumOfNumber:2.3 andNumber:3.6];
    XCTAssertEqual(result, 5.9, @"Result is not Correct");
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
