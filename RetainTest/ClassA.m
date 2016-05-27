//
//  ClassA.m
//  RetainTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA
//- (id) init
//{
//    self = [super init];
//    if(self)
//    {
//        
//    }
//    return self;
//}

- (void) setIns:(id)instance
{
    if(ins)
    {
        [ins release];
    }
    ins = [instance retain];
}

- (void) dealloc
{
    if(ins) [ins release];
    [super dealloc];
}
@end
