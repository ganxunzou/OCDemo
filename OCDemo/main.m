//
//  main.m
//  OCDemo
//
//  Created by GXZ on 18/11/10.
//  Copyright © 2018年 GXZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Cat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //默认
        Animal *bAn = [[Animal alloc] init];
        // setter
        [bAn setName:@"dog"];
        [bAn setColor:@"white"];
        // 不推荐的写法
        bAn.name = @"dog";
        bAn.name = @"white";
        
        // getter
        NSLog(@"bAn name:%@, color:%@", [bAn name], [bAn color]);
        
        
        // 测试初始化传参
        Animal *an = [[Animal alloc] init:@"dog" color:@"black"];
        [an sayHello];
                
        // 测试重写
        [an who:@"dog"];
        
        // 测试重写
        Cat *cat = [[Cat alloc] init];
        [cat who];
        
        // 测试多态（里氏替换）
        Animal *aCat = cat;
        [aCat who];
        
        // 测试静态变量
        NSLog(@"static var : %@", [Animal testStaticVar]);
        
        // 测试静态方法
        [Animal testStaticFunc];
        
    }
    return 0;
}
