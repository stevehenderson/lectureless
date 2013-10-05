//
//  SingletonObject.m
//  lectureless
//
//  Created by Steve Henderson on 10/5/13.
//  Copyright (c) 2013 Steve Henderson. All rights reserved.
//
#import "SingletonObject.h"

@implementation SingletonObject
@synthesize section;
@synthesize course;


+(SingletonObject *)singleObj{
    
    static SingletonObject * single=nil;
    
    @synchronized(self)
    {
        if(!single)
        {
            single = [[SingletonObject alloc] init];
            
        }
    }
    return single;
}
@end