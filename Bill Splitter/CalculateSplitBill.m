//
//  CalculateSplitBill.m
//  Bill Splitter
//
//  Created by Kevin Cleathero on 2017-06-10.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "CalculateSplitBill.h"

@implementation CalculateSplitBill

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        _vc = [[ViewController alloc] init];
//        _vc.delegate = self;
//    }
//    return self;
//}

-(NSString *)CalculateSplitBillWithAmount:(NSString *)billAmount andPeople:(double)people{

    /// Calculate slplite bill amount
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    NSDecimalNumber *splitbill;
    
    if(billAmount && billAmount.length > 0){
        
        NSDecimalNumber *billAmt = [NSDecimalNumber decimalNumberWithString:billAmount];
        NSDecimalNumber *numOfPeople = [[NSDecimalNumber alloc] initWithDouble:people];
        splitbill = [billAmt decimalNumberByDividingBy:numOfPeople];
        
    }
   
    return [numberFormatter stringFromNumber:splitbill];
    
}

@end
