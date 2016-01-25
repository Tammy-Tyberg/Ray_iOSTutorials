//
//  QuizTipViewController.m
//  QuoteQuiz
//
//  Created by Tammy Tyberg on 1/25/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import "QuizTipViewController.h"


@interface QuizTipViewController ()




@end

@implementation QuizTipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.tipView.text = self.tipText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneAction:(id)sender
{
    [self.delegate quizTipDidFinish:self];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"TipModal"]) {
        QuizTipViewController * detailViewController = (QuizTipViewController *) segue.destinationViewController;
        detailViewController.delegate = self;
        detailViewController.tipText = self.quiz.tip;
    }
}

@end
