//
//  FirstViewController.h
//  lectureless
//
//  Created by Steve Henderson on 10/2/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UITextField *myTextBox;


- (IBAction)updateSlider:(id)sender;

@end
