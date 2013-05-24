//
//  USStepTwoViewController.m
//  UnwindSegueProgramatically
//
//  Created by Bradley Griffith on 5/24/13.
//  Copyright (c) 2013 Bradley Griffith. All rights reserved.
//

#import "USStepTwoViewController.h"

@interface USStepTwoViewController ()

@end

@implementation USStepTwoViewController


- (IBAction)goBackward:(id)sender {
    NSLog(@"Will return to step one.");
    [self performSegueWithIdentifier:@"returnToStepOne" sender:self];
}
@end
