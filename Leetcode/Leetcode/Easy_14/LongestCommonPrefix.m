//
//  LongestCommonPrefix.m
//  Leetcode
//
//  Created by meaven on 2018/9/7.
//  Copyright © 2018 meaven. All rights reserved.
//

#import "LongestCommonPrefix.h"

@implementation LongestCommonPrefix

/*
 Problem:
 14. Longest Common Prefix
 
 Write a function to find the longest common prefix string amongst an array of strings.
 
 If there is no common prefix, return an empty string "".
 
 Example 1:
 
 Input: ["flower","flow","flight"]
 Output: "fl"
 
 
 Example 2:
 
 Input: ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 
 
 Note:
 
 All given inputs are in lowercase letters a-z.
 */

- (NSString *)longestCommonPrefix:(NSArray<NSString *> *)stringArray {
    if ([stringArray count] == 0) {
        return @"";
    }
    NSString *prefix = stringArray[0];
    for (NSUInteger i = 1; i < [stringArray count]; i++) {
        while (![stringArray[i] hasPrefix:prefix]) {
            prefix = [prefix substringToIndex:([prefix length] - 1)];
            if ([prefix length] == 0) {
                return @"";
            }
        }
        
    }
    return prefix;
}

@end
