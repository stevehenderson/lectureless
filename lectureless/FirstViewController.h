//
//  FirstViewController.h
//  lectureless
//
//  Created by Steve Henderson on 10/2/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface FirstViewController : UIViewController


@property (weak, nonatomic) IBOutlet UISlider *comprehensionSlider;
@property (weak, nonatomic) IBOutlet UISlider *interactionSlider;

@property (weak, nonatomic) IBOutlet UISlider *motivationSlider;

- (IBAction)comprehensionChanged:(id)sender;
- (IBAction)interactionChanged:(id)sender;
- (IBAction)motivationChanged:(id)sender;





@end
