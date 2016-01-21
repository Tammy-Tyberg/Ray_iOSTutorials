//
//  ViewController.h
//  Tap Me
//
//  Created by Tammy Tyberg on 1/20/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    
    
    IBOutlet UILabel *scoreLabel;//hinting we want this to be an outlet
    IBOutlet UILabel *timerLabel;
    
    int count; //hold number of taps using NSInt since can hold huge numbers
    NSInteger seconds;//seconds remaining
    NSTimer *timer;
    
}

-(IBAction)buttonPressed; //iba action hints this method wil be connected to some action


@end

