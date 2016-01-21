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
    [self setupGame];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
      NSLog(@"You entered: %i", count);
}

-(void)setupGame{
    
    seconds = 30;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    
    
    // 3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self//message go to the view and this is view controller so itself
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
    
    
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame]; //when user presses pop up sends calls set up game
}

-(void)subtractTime{
    
    seconds --;
    timerLabel.text = [NSString stringWithFormat:@"Time: %i",seconds];
    
    // 2
    if (seconds == 0) {
        [timer invalidate];
    
    }
    
    if(seconds == 0){
        [timer invalidate];
        
        
        //sends alert
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                        message:[NSString stringWithFormat:@"You scored %i points", count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
    }
}
@end
