//
//  ViewController.m
//  Bill Splitter
//
//  Created by Kevin Cleathero on 2017-06-10.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textBillTotal;
@property (weak, nonatomic) IBOutlet UISlider *sliderPeople;
@property (weak, nonatomic) IBOutlet UILabel *labelDividedAmount;
@property (weak, nonatomic) IBOutlet UILabel *labelNumberofPeople;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)CalculateSplitAmount:(UISlider *)sender {
    
    /// diplay num of people from slider
    _labelNumberofPeople.text = [NSString stringWithFormat:@"%0.f", self.sliderPeople.value];
    
    /// Calculate slplite bill amount
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    long bAmt = [self.textBillTotal.text integerValue];
    long splitbill = (bAmt / self.sliderPeople.value);
    
    NSNumber *billAmt = [[NSNumber alloc] initWithLong:splitbill];
    self.labelDividedAmount.text = [numberFormatter stringFromNumber:billAmt];
    
    
    
}


@end
