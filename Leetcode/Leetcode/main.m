//
//  main.m
//  Leetcode
//
//  Created by meaven on 2018/9/7.
//  Copyright © 2018 meaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"

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
    
    /*
    ReverseInteger *rev = [[ReverseInteger alloc] init];
    int reversed = [rev reverseInteger:-2147483648];
    NSLog(@"reversed = %d", reversed);
    */
    
    PalindromeNumber *palindrome = [[PalindromeNumber alloc] init];
    NSInteger x = 121;
    BOOL flag = [palindrome isPalindromeNumber:x];
    NSLog(@"%ld is%@ palindrome number", (long)x, flag ? @"" : @" not");
    
    return 0;
}
