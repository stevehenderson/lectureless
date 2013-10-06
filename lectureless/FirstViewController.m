//
//  FirstViewController.m
//  lectureless
//
//  Created by Steve Henderson on 10/2/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end



@implementation FirstViewController

@synthesize comprehensionSlider;
@synthesize interactionSlider;
@synthesize motivationSlider;


- (NSString *) identifierForVendor
{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(identifierForVendor)]) {
        return [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    }
    return @"";
}


- (void)viewDidLoad
{
    
    // create a standardUserDefaults variable
    standardUserDefaults = [NSUserDefaults standardUserDefaults];

    if([[NSUserDefaults standardUserDefaults] objectForKey:@"course"] == nil) {
        [standardUserDefaults setObject:@"UNSET" forKey:@"course"];
        [standardUserDefaults synchronize];
    }
  
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"section"] == nil) {
        [standardUserDefaults setObject:@"UNSET" forKey:@"section"];
        [standardUserDefaults synchronize];
    }
  
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"lecturelessId"] == nil) {
        NSString *vendorID = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        [standardUserDefaults setObject:vendorID forKey:@"lecturelessId"];
        [standardUserDefaults synchronize];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)pushLatest {
    
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    
    NSString *cValue = [NSString stringWithFormat:@"%f", comprehension];
    [testObject setObject:cValue forKey:@"comprehension"];
    
    
    NSString *iValue = [NSString stringWithFormat:@"%f", interaction];
    [testObject setObject:iValue forKey:@"interaction"];
    
    
    NSString *mValue = [NSString stringWithFormat:@"%f", motivation];
    [testObject setObject:mValue forKey:@"motivation"];
    
    
    NSString *courseValue = [standardUserDefaults stringForKey:@"course"];
    NSString *sectionValue =[standardUserDefaults stringForKey:@"section"];
    NSString *clientID =[standardUserDefaults stringForKey:@"lecturelessId"];
    
    
    [testObject setObject:courseValue forKey:@"course"];
    
    [testObject setObject:sectionValue forKey:@"section"];

    
    
    [testObject setObject:clientID forKey:@"lecturelessId"];
    
    
    [testObject save];
    
}


- (void) updateComprehension :(id)sender {
    UISlider *stepper = (UISlider *) sender;
    stepper.continuous=false;
   
    NSLog(@"Comprehension now %.1f", [stepper value]);
    comprehension=stepper.value;
    [self pushLatest];
}


- (void) updateMotivation :(id)sender {
    UISlider *stepper = (UISlider *) sender;
    stepper.continuous=false;
    NSLog(@"Motivation now %.1f", [stepper value]);
    motivation=stepper.value;
    [self pushLatest];
}


- (void) updateInteraction :(id)sender {
    UISlider *stepper = (UISlider *) sender;
    stepper.continuous=false;
    NSLog(@"Interaction now %.1f", [stepper value]);
    interaction=stepper.value;
    [self pushLatest];
}

- (IBAction)comprehensionChanged:(id)sender {
      
    
}


- (IBAction)interactionChanged:(id)sender {
   [self updateInteraction:sender];

}

- (IBAction)motivationChanged:(id)sender {
    [self updateMotivation:sender];
}

- (IBAction)motivationDoneChanging:(id)sender {
   }

- (IBAction)comprehensionTouchUpInside:(id)sender {
    //[self updateComprehension:sender];
}

- (IBAction)comprehensionTouchUpOutside:(id)sender {
    [self updateComprehension:sender];
}



@end
