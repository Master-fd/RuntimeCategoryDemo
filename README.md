# RuntimeCategoryDemo
由于Category只能增加方法不能增加成员变量，所以在通过@property的方式，在分类只能生成Setter和Getter方法  
一种常用的方法是在主类中声明一个属性，再在分类中生成Setter和Getter方法，但是感觉有点怪怪的就是了。  
通过Runtime机制，objc_setAssociatedObject和objc_getAssociatedObject属性关联的方式也是可以给分类添加属性的   

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
