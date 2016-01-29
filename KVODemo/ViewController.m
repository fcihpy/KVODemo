//
//  ViewController.m
//  KVODemo
//
//  Created by locojoy on 16/1/26.
//  Copyright © 2016年 fcihpy. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "FCKVONotifying_person.h"
#import "NSObject+KVO.h"


@interface ViewController ()

@property (nonatomic,strong) Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *p = [[Person alloc]init];
    self.person = p;
//    //系统监听方法
//    [p addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
//
    //自己监听方法
    [p FC_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];

}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSLog(@"person_age %@-- %ld",change,self.person.age);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.person.age ++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
