//
//  ViewController.m
//  Bill Splitter
//
//  Created by Kevin Cleathero on 2017-06-10.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"
#import "CalculateSplitBill.h"



@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISlider *sliderPeople;
@property (weak, nonatomic) IBOutlet UILabel *labelDividedAmount;
@property (weak, nonatomic) IBOutlet UILabel *labelNumberofPeople;

@property (weak, nonatomic) IBOutlet UITextField *textBillTotal;
@property (nonatomic) CalculateSplitBill *calculateBill;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textBillTotal.delegate = self;
    _calculateBill = [[CalculateSplitBill alloc] init];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)CalculateSplitAmount:(UISlider *)sender {
    
    /// diplay num of people from slider
    _labelNumberofPeople.text = [NSString stringWithFormat:@"%0.f", self.sliderPeople.value];
    
    
//    self.labelDividedAmount.text = [self.delegate CalculateSplitBillWithAmount:self.textBillTotal.text andPeople:self.sliderPeople.value];
    
    self.labelDividedAmount.text = [self.calculateBill CalculateSplitBillWithAmount:self.textBillTotal.text andPeople:self.sliderPeople.value];
    
}
- (IBAction)btnCalculateSpltAmount:(UIButton *)sender {
    
    //copied code from here to above
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    _labelNumberofPeople.text = [NSString stringWithFormat:@"%0.f", self.sliderPeople.value];
    
    self.labelDividedAmount.text = [self.calculateBill CalculateSplitBillWithAmount:textField.text andPeople:self.sliderPeople.value];
    
    return YES;
}

@end
