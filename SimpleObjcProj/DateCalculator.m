//
//  DateCalculator.m
//  SimpleObjcProj
//
//  Created by Jonathan Oh on 2/1/20.
//  Copyright © 2020 Jonathan Oh. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator 

- (BOOL)shouldTheyDate: (float)hisAge herAge: (float)herAge {
    return hisAge / 2 + 7 < herAge;
}

- (BOOL)shouldStoredPeopleDate {
    return self.hisAge / 2 + 7 < self.herAge;
}

- (void)calculateAgeDelay: (float)hisAge herAge: (float)herAge blockParam: (void (^)(BOOL))completion {
    [NSThread sleepForTimeInterval: 3];
    BOOL shouldTheyDate = hisAge / 2 + 7 < herAge;
    completion(shouldTheyDate);
}

@end
