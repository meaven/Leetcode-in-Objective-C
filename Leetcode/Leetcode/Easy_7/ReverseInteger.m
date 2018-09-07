//
//  ReverseInteger.m
//  Leetcode
//
//  Created by meaven on 2018/9/7.
//  Copyright © 2018 meaven. All rights reserved.
//

#import "ReverseInteger.h"

@implementation ReverseInteger

/*
 Problem:
 7. Reverse Integer
 
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output: 321
 
 
 Example 2:
 
 Input: -123
 Output: -321
 
 
 Example 3:
 
 Input: 120
 Output: 21
 
 
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−2^31,  2^31 − 1]. For the purpose of this
 problem, assume that your function returns 0 when the reversed integer overflows.
 */


/**
 Approach 1: Pop and Push Digits & Check before Overflow
 Intuition
 
 We can build up the reverse integer one digit at a time. While doing so, we can check beforehand whether or not appending another digit would cause overflow.
 
 
 Complexity Analysis
 
 Time Complexity: O(log(x)). There are roughly log10(x)digits in x.
 Space Complexity: O(1).
 
 */

- (int)reverseInteger:(int)x {
    int rev = 0;
    // INT_MAX =  2147483647
    // INT_MIN = -2147483648
    while (x != 0) {
        int pop = x % 10;
        x /= 10;
        if (rev > INT_MAX / 10 || (rev == INT_MAX / 10 && pop > 7)) {
            return 0;
        }
        if (rev < INT_MIN / 10 || (rev == INT_MIN / 10 && pop < -8)) {
            return 0;
        }
        rev = rev * 10 + pop;
    }
    return rev;
}

@end
