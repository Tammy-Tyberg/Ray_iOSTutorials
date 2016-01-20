//
//  main.m
//  PeopleDatabase
//
//  Created by Tammy Tyberg on 1/20/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        do {
            Person *newPerson = [[Person alloc] init];
            
            [newPerson enterInfo];
            [newPerson printInfo];
            [people addObject:newPerson]; //adding person to people array so object does't get overwritten in next iteration
            
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c", &response);
        } while(response == 'y');
        
        //using forloop to retrieve contents of an array
        NSLog(@"Number of people in the database: %li", [people count]);
        for(Person *onePerson in people){
            [onePerson printInfo];
        }
        
    }
    return 0;
}
