//
//  ViewController.h
//  QuoteQuiz
//
//  Created by Tammy Tyberg on 1/25/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuizTipViewController.h"

@class Quiz;//saying we are gonna use this class eventually

@interface ViewController : UIViewController  <QuizTipViewControllerDelegate>


- (IBAction)ans1Action:(id)sender;
- (IBAction)ans2Action:(id)sender;
- (IBAction)ans3Action:(id)sender;
- (IBAction)startAgain:(id)sender;

@property (nonatomic, assign) NSInteger quizIndex;
@property (nonatomic, strong) Quiz * quiz;

@end

