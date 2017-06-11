//
//  CalculateSplitBill.h
//  Bill Splitter
//
//  Created by Kevin Cleathero on 2017-06-10.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CalculateSplitBill : NSObject

-(NSString *)CalculateSplitBillWithAmount:(NSString *)billAmount andPeople:(double)people;

//@property (nonatomic) ViewController *vc;


@end
