//
//  NSObject+KVO.m
//  KVODemo
//
//  Created by locojoy on 16/1/26.
//  Copyright © 2016年 fcihpy. All rights reserved.
//

#import "NSObject+KVO.h"
#import "FCKVONotifying_person.h"

@implementation NSObject (KVO)

- (void)FC_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context{
    /*
     
     1、动态创建FCKVONotifying_person，即person的子类
     2、修改当前的ISA指针
     3、只要调用set方法，就会调用FCKVONotifying_person的set方法
     4、重定FCKVONotifying_person set方法，通知观察者属性改变
     */
    
    
    //修改isa指针的类名
    object_setClass(self, [FCKVONotifying_person class]);
    
    //把观察者存到当前对象中
    
    //添加关联
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
