//
//  NSObject+KVO.h
//  KVODemo
//
//  Created by locojoy on 16/1/26.
//  Copyright © 2016年 fcihpy. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <objc/runtime.h>

@interface NSObject (KVO)

- (void)FC_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;

@end
