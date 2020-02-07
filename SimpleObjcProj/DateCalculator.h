//
//  DateCalculator.h
//  SimpleObjcProj
//
//  Created by Jonathan Oh on 2/1/20.
//  Copyright © 2020 Jonathan Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject

/*
 atomic: DEFAULT, never needs to be specified. Makes the object property thread safe
 strong: Adds reference to keep object alive
 weak: object can disappear, become nil
 assign: Normal assign, no reference (usually used for primitive types)
 copy: Make a copy on assignment
 nonatomic: Not thread safe, but has performance gains
 readwrite: DEFAULT, Creates a getter and setter
 readonly: Only creates a getter
 getter<name>: Specify name of getter
 setter<name>: Specify name of setter
*/

@property (nonatomic) float hisAge;
@property (nonatomic) float herAge;
@property (nonatomic, copy) void (^completion)(BOOL);

- (BOOL)shouldTheyDate: (float)hisAge herAge: (float)herAge;
- (BOOL)shouldStoredPeopleDate;

- (void)calculateAgeDelay: (float)hisAge herAge: (float)herAge blockParam: (void (^)(BOOL))completion;

@end

NS_ASSUME_NONNULL_END
