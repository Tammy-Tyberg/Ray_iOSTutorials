//
//  ViewController.h
//  Tap Me
//
//  Created by Tammy Tyberg on 1/20/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    
    IBOutlet UILabel *scoreLabel;//hinting we want this to be an outlet
    IBOutlet UILabel *timerLabel;
    
    
}

-(IBAction)buttonPressed; //iba action hints this method wil be connected to some action


@end

