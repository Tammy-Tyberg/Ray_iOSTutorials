//
//  Person.h
//  PeopleDatabase
//
//  Created by Tammy Tyberg on 1/20/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{

NSString *firstName;
NSString *lastName;
int age;
    
    
}

-(void)enterInfo;
-(void)printInfo;



@end
