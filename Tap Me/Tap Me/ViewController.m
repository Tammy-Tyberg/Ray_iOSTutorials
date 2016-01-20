//
//  ViewController.m
//  Tap Me
//
//  Created by Tammy Tyberg on 1/20/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    scoreLabel.text = @"Pressed!";//score label is now connected to button so when pressed updates
    NSLog(@"Pressed!");
}

@end
