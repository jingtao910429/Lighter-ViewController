//
//  User.h
//  LighterViewController
//
//  Created by wwt on 15/11/3.
//  Copyright (c) 2015年 rongyu. All rights reserved.
//

#import "CommonModel.h"

//如果需要将自定义model存储，需要实现NSCoding协议，实现encodeWithCoder、initWithCoder
@interface User : CommonModel <NSCoding>

@property (nonatomic) int64_t identifier;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSArray *photos;

- (NSString *)fullName;
- (NSUInteger)numberOfPhotosCount;

@end
