//
//  SingletonObject.h
//  lectureless
//
//  Created by Steve Henderson on 10/5/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject


@property(nonatomic, strong) NSString *section;
@property(nonatomic, strong) NSString *course;


+(SingletonObject *)singleObj;

@end
