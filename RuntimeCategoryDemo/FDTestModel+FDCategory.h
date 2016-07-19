//
//  FDTestModel+FDCategory.h
//  RuntimeCategoryDemo
//
//  Created by asus on 16/7/19.
//  Copyright (c) 2016年 asus. All rights reserved.
//

#import "FDTestModel.h"

@interface FDTestModel (FDCategory)

/**
 *  在分类，只能是生成setter和getter方法，需要我们来runtime来增加变量
 */
@property (nonatomic, copy) NSString *testStr;

@end
