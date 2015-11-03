//
//  User.m
//  LighterViewController
//
//  Created by wwt on 15/11/3.
//  Copyright (c) 2015年 rongyu. All rights reserved.
//

#import "User.h"

static NSString * const IdentifierKey  = @"identifier";
static NSString * const UsernameKey    = @"username";
static NSString * const FirstNameKey   = @"firstname";
static NSString * const LastNameKey    = @"lastname";
static NSString * const PhotosKey      = @"photos";

@implementation User

//解码
- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    if (self) {
        self.identifier = [aDecoder decodeInt64ForKey:IdentifierKey];
        self.userName   = [aDecoder decodeObjectOfClass:[NSString class] forKey:UsernameKey];
        self.firstName  = [aDecoder decodeObjectOfClass:[NSString class] forKey:FirstNameKey];
        self.lastName   = [aDecoder decodeObjectOfClass:[NSString class] forKey:LastNameKey];
        self.photos     = [aDecoder decodeObjectOfClass:[NSArray class] forKey:PhotosKey];
    }
    return self;
}

//编码
- (void)encodeWithCoder:(NSCoder *)aCoder {
    
}

@end
