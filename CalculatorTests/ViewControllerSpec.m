//
//  ViewControllerSpec.m
//  
//
//  Created by workMac on 15/9/14.
//
//

#import "Kiwi.h"
#import "ViewController.h"
#import "Calculator.h"

SPEC_BEGIN(ViewControllerSpec)

describe(@"ViewController", ^{
    
    context(@"stub Test", ^{
        
        __block ViewController *_VC = nil;
        __block Calculator *calculator = nil;
        
        beforeEach(^{
            _VC = [ViewController new];
            calculator = [Calculator new];
        });
        
        afterEach(^{
            _VC = nil;
            calculator = nil;
        });
    
        it(@"should operate correctly", ^{
            
            [calculator stub:@selector(sumOfNumber:andNumber:)
                   andReturn:theValue(5)
               withArguments:theValue(3), theValue(2)];
            
            [calculator stub:@selector(productOfNumber:andNumber:)
                   andReturn:theValue(10)
               withArguments:theValue(2),theValue(5)];
            
            [[theValue([_VC perimeterOfRectangleWithLength:3 andWidth:2]) should]equal:theValue(10)];
        });
    });
});

SPEC_END
