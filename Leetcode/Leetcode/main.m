//
//  main.m
//  Leetcode
//
//  Created by meaven on 2018/9/7.
//  Copyright © 2018 meaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TwoSum.h"
#import "ReverseInteger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    /*
    TwoSum *sum = [[TwoSum alloc] init];
    NSArray *resultArray = [sum twoSumWithArray:@[@2, @7, @11, @15] target:9];
    NSLog(@"resultArray = %@", resultArray);
     */
    
    ReverseInteger *rev = [[ReverseInteger alloc] init];
    int reversed = [rev reverseInteger:-123];
    NSLog(@"reversed = %d", reversed);
    
    
    return 0;
}
