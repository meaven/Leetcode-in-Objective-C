//
//  TwoSum.m
//  Leetcode
//
//  Created by meaven on 2018/9/7.
//  Copyright © 2018 meaven. All rights reserved.
//

#import "TwoSum.h"

@implementation TwoSum

/*
 Problem:
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */


/*
 Solution:
 
 Approach 3: One-pass Hash Table
 It turns out we can do it in one-pass. While we iterate and inserting elements into the table, we also look back to check if current element's complement
 already exists in the table. If it exists, we have found a solution and return immediately.
 
 */

- (NSArray *)twoSumWithArray:(NSArray *)sourceArray target:(NSInteger)target {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    NSMutableArray *resultArray = [NSMutableArray array];
    for (NSUInteger i = 0; i < [sourceArray count]; i++) {
        NSNumber *complement = @(target - [sourceArray[i] integerValue]);
        if (dictionary[complement]) {
            NSInteger index = [dictionary[complement] integerValue];
            [resultArray addObject:@(index)];
            [resultArray addObject:@(i)];
            break;
        }
        dictionary[sourceArray[i]] = @(i);
    }
    
    return resultArray;
}

@end
