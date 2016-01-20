//
//  main.m
//  My_First_Project
//
//  Created by Tammy Tyberg on 1/20/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int answer = 0; //answer obviously
        int guess = 0;//user's guess
        int turn = 0;//how many turns the user had to guess
        
        answer = arc4random() %100 + 1; //use random generator- generate numbers bet 1 to 100
        NSLog(@"The random value is %i", answer); //debugging statement
        
        
        
        while(!( guess == answer)){
            
                turn++;
            
                NSLog(@"Guess #%i: Enter a number between 1 and 100", turn);
                scanf("%i", &guess);
                NSLog(@"You entered: %i", guess);
        
                if(guess > answer){
                    
                        NSLog(@"Lower!");
                }
                    else if (guess < answer){
                        
                        NSLog(@"Higher!");
                    }
            
                else{
                    
                    NSLog(@"Correct! The answer was %i", answer);
                }
        }
        
        NSLog(@"It took your %i tries", turn);
        
    }
    return 0;
}
