//
//  Animal.h
//  OCDemo
//
//  Created by GXZ on 18/11/10.
//  Copyright © 2018年 GXZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property NSString* name;
@property NSString* color;

// 重载init方法，增加初始化并传参
-(id) init: (NSString *) name color: (NSString*) color;
  
-(void) who;

-(void) who: (NSString*) name;

-(void) sayHello;


+(NSString*) testStaticVar;

+(void) testStaticFunc;




@end
