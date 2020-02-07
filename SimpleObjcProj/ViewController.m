//
//  ViewController.m
//  SimpleObjcProj
//
//  Created by Jonathan Oh on 2/1/20.
//  Copyright © 2020 Jonathan Oh. All rights reserved.
//

#import "ViewController.h"
#import "DateCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    DateCalculator *dc = [[DateCalculator alloc] init];
    [dc calculateAgeDelay:20 herAge:19 blockParam:^(BOOL shouldTheyDate) {
        NSLog(@"%@", shouldTheyDate ? @"YES" : @"NO");
    }];
}


@end
