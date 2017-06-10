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


@end
