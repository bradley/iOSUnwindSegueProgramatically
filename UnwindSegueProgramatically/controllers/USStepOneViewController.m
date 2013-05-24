//
//  USStepOneViewController.m
//  UnwindSegueProgramatically
//
//  Created by Bradley Griffith on 5/24/13.
//  Copyright (c) 2013 Bradley Griffith. All rights reserved.
//

#import "USStepOneViewController.h"

@interface USStepOneViewController ()

@end

@implementation USStepOneViewController

- (IBAction)goForward:(id)sender {
    // This segue is defined in the storyboard.
    // The connection is between the view controller of steps one and two,
    // and not between the button on step one and the view controller of step two.
    [self performSegueWithIdentifier:@"segueToStepTwo" sender:self];
}

- (IBAction)returnToStepOne:(UIStoryboardSegue *)segue {
    // This segue is used for unwinding to this view controller. Notice
    // that the circle to the left is empty, meaning it is not connected.
    NSLog(@"And now we are back.");
}


@end
