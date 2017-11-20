//
//  main.m
//  Prog4.6
//
//  Created by Tống Đăng Tình on 11/20/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//

//----------------------------------------------------
// A calculator class
// Implement a Calculator class

#import <Foundation/Foundation.h>


// Interface section
@interface Calculator : NSObject
 // The interface section decribles the class its data componts and its methods

{
    double accumulator;
    
}
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// Arithetic methods
-(void) add: (double) value;
-(void) subtruct: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double)    value;


@end

// Implemetation Calculator
@implementation Calculator

// Method setAcculator
-(void) setAccumulator:(double)value{
    accumulator =value;
}
// Method clear
-(void) clear{
    accumulator = 0;
}


-(double) accumulator{
    return accumulator;
}

-(void) add:(double)value{
    accumulator+=value;
}

-(void) subtruct:(double)value{
    accumulator-=value;
}

-(void) multiply:(double)value{
    accumulator*=value;
}
-(void) divide:(double)value{
    accumulator/=value;
}
//
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
        
        Calculator *myCalculator =[[Calculator alloc] init];
        [myCalculator setAccumulator:100];
        [myCalculator add: 200.0];
        [myCalculator subtruct:15.0];
        [myCalculator divide:5.0];
        NSLog(@"The result is %g",[myCalculator accumulator]);
        
    }
    return 0;
}
