//
//  main.m
//  RetainTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init]; // a_RC 1
        ClassB *b = [[ClassB alloc] init]; // b_RC 1
        
        [a setIns:b]; // a_RC 1, b_RC 2
        [b setIns:a]; // a_RC 2, b_RC 2
        
        [b release]; // b_RC 1
        [a release]; // a_RC 1
    }
    return 0;
}
