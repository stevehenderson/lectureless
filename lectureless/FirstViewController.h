//
//  FirstViewController.h
//  lectureless
//
//  Created by Steve Henderson on 10/2/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "SingletonObject.h"


@interface FirstViewController : UIViewController{
    SingletonObject * sobj;
    float comprehension;
    float interaction;
    float motivation;
    NSUserDefaults * standardUserDefaults;
    
}


@property (weak, nonatomic) IBOutlet UISlider *comprehensionSlider;
@property (weak, nonatomic) IBOutlet UISlider *interactionSlider;

@property (weak, nonatomic) IBOutlet UISlider *motivationSlider;

- (void) pushLatest;
- (void) updateComprehension:(id)sender;
- (void) updateMotivation:(id)sender;
- (void) updateInteraction:(id)sender;

- (IBAction)interactionChanged:(id)sender;
- (IBAction)motivationChanged:(id)sender;
- (IBAction)motivationDoneChanging:(id)sender;
- (IBAction)comprehensionTouchUpInside:(id)sender;
- (IBAction)comprehensionTouchUpOutside:(id)sender;





@end
