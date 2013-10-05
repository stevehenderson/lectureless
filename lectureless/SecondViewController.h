//
//  SecondViewController.h
//  lectureless
//
//  Created by Steve Henderson on 10/2/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SingletonObject.h"


@interface SecondViewController : UIViewController{
    SingletonObject * sobj;
    NSUserDefaults* standardUserDefaults;

    
}


@property (weak, nonatomic) IBOutlet UITextField *course;
@property (weak, nonatomic) IBOutlet UITextField *section;
@property (weak, nonatomic) IBOutlet UITextField *vendorId;



- (IBAction)updateCourse:(id)sender;
- (IBAction)updateSection:(id)sender;

@end
