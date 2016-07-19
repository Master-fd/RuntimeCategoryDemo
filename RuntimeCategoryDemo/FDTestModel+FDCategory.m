//
//  FDTestModel+FDCategory.m
//  RuntimeCategoryDemo
//
//  Created by asus on 16/7/19.
//  Copyright (c) 2016年 asus. All rights reserved.
//

#import "FDTestModel+FDCategory.h"
#import <objc/runtime.h>
/**
 *  新建一个全局变量
 */
static void *str;

@implementation FDTestModel (FDCategory)



/**
 *  通过关联属性的方式，增加成员变量
 *  OBJC_ASSOCIATION_COPY_NONATOMIC 关联策略为copy，nonatomic
 */
- (void)setTestStr:(NSString *)testStr
{
    FDLog(@"通过关联属性的方式，objc_setAssociatedObject方法");
    objc_setAssociatedObject(self, &str, testStr, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)testStr
{
    FDLog(@"通过关联属性的方式，objc_getAssociatedObject方法");
    return objc_getAssociatedObject(self, &str);
}

@end
