//
//  FirstViewController.m
//  lectureless
//
//  Created by Steve Henderson on 10/2/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end



@implementation FirstViewController

@synthesize slider;
@synthesize myTextBox;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)updateSlider:(id)sender {
    UISlider *stepper = (UISlider *) sender;
    myTextBox.text = [NSString stringWithFormat:@" %.1f", [stepper value]];


}
@end
