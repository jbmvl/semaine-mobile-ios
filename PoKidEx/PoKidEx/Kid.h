//
//  Kid.h
//  PoKidEx
//
//  Created by Jean-Michel Didon on 03/12/2013.
//  Copyright (c) 2013 HETIC. All rights reserved.
//
// Object "Kid" : data model for a Kid that will be used in the list

#import <Foundation/Foundation.h>

@interface Kid : NSObject

// The informations of a kid.
@property (readonly) NSInteger *id_kid;
@property NSString *firstName;
@property NSString *lastName;
@property NSString *age;

@end
