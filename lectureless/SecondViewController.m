//
//  SecondViewController.m
//  lectureless
//
//  Created by Steve Henderson on 10/2/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end



@implementation SecondViewController

@synthesize course;
@synthesize section;

- (void)viewDidLoad
{
    standardUserDefaults = [NSUserDefaults standardUserDefaults];
 
    
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"course"] == nil) {
        [standardUserDefaults setObject:@"UNSET" forKey:@"course"];
        [standardUserDefaults synchronize];
    }
    
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"section"] == nil) {
        [standardUserDefaults setObject:@"UNSET" forKey:@"section"];
        [standardUserDefaults synchronize];
    }
    
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"id"] == nil) {
        NSString *vendorID = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        [standardUserDefaults setObject:vendorID forKey:@"id"];
        [standardUserDefaults synchronize];
    }
    

    
    
    NSString *courseValue = [standardUserDefaults stringForKey:@"course"];
    NSString *sectionValue =[standardUserDefaults stringForKey:@"section"];
    NSString *idValue =[standardUserDefaults stringForKey:@"id"];
    
    
    [self course].text = courseValue;
    [self section].text = sectionValue;
    [self vendorId].text = idValue;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateCourse:(id)sender {
    NSString *newCourse =[self course].text;
    [standardUserDefaults setObject:newCourse forKey:@"course" ];
    [standardUserDefaults synchronize];
    
}

- (IBAction)updateSection:(id)sender {
    NSString *newSection = [self section].text;
    [standardUserDefaults setObject:newSection forKey:@"section"];
    [standardUserDefaults synchronize];
}
@end
