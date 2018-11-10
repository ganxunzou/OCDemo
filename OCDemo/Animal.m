//
//  Animal.m
//  OCDemo
//
//  Created by GXZ on 18/11/10.
//  Copyright © 2018年 GXZ. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(id)init:(NSString *)name color:(NSString *)color
{
    self = [super init];
    if (self) {
        self.name = name;
        self.color = color;
    }
    return self;
}

- (void)who
{
   NSLog(@"call Animal Who!!");
}

- (void)who:(NSString*) name
{
    NSLog(@"test overload, name:%@", name);
}

- (void)sayHello
{
    NSLog(@"sayHello name:%@, color:%@", _name, _color);
}

+ (NSString*)testStaticVar
{
    return @"this is static var";
}

+(void)testStaticFunc
{
    NSLog(@"this is static func");
}
@end
