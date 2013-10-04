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

@synthesize comprehensionSlider;
@synthesize interactionSlider;
@synthesize motivationSlider;


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



- (IBAction)comprehensionChanged:(id)sender {
    UISlider *stepper = (UISlider *) sender;
    NSLog(@"Comprehension now %.1f", [stepper value]);
  
    /*
    // Create our Installation query
    PFQuery *pushQuery = [PFInstallation query];
    [pushQuery whereKey:@"deviceType" equalTo:@"ios"];
    
    // Send push notification to query
    [PFPush sendPushMessageToQueryInBackground:pushQuery
                                   withMessage:@"Hello World!"];
*/
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    [testObject setObject:@"bar" forKey:@"foo"];
    [testObject save];
}


- (IBAction)interactionChanged:(id)sender {
    UISlider *stepper = (UISlider *) sender;
   NSLog(@"Interaction now %.1f", [stepper value]);

}

- (IBAction)motivationChanged:(id)sender {
    UISlider *stepper = (UISlider *) sender;
    NSLog(@"Motivation now %.1f", [stepper value]);

}



@end
