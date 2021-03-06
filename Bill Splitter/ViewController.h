//
//  ViewController.h
//  Bill Splitter
//
//  Created by Kevin Cleathero on 2017-06-10.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewControllerCalcDelegate <NSObject>

-(NSString *)CalculateSplitBillWithAmount:(NSString *)billAmount andPeople:(double)people;

@end

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <ViewControllerCalcDelegate> delegate;

@end

