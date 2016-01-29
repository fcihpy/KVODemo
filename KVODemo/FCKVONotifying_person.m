//
//  FCKVONotifying_person.m
//  KVODemo
//
//  Created by locojoy on 16/1/26.
//  Copyright © 2016年 fcihpy. All rights reserved.
//

#import "FCKVONotifying_person.h"
#import <objc/runtime.h>

@implementation FCKVONotifying_person

- (void)setAge:(NSInteger)age{
    [super setAge:age];
    
    //通知观察者属性改变
    
    id observer = objc_getAssociatedObject(self, @"observer");
    [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];

}
@end
