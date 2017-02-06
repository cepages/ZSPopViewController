//
//  UINavigationController+ZSPopCategory.m
//  Pods
//
//  Created by zuoshen on 2017/2/4.
//
//

#import "UINavigationController+ZSPopCategory.h"
#import "JRSwizzle.h"

@implementation UINavigationController (ZSPopCategory)
    
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSError *err = nil;
        [self jr_swizzleMethod:@selector(popViewControllerAnimated:) withMethod:@selector(swizzle_popViewControllerAnimated:) error:&err];
        if (err) NSLog(@"弹出页面发生错误(%@):%@",[self description], err.localizedDescription);
    });
}
    
- (nullable UIViewController *)swizzle_popViewControllerAnimated:(BOOL)animated{
    
    NSMutableArray *ignoreList = [self getIgnoreList];
    if (ignoreList.count > 0) {
        NSInteger count = self.viewControllers.count;
        if (count > 2) {
            for (int j = count - 2; j >= 0; j--) {
                BOOL hasVC = NO;
                UIViewController* vc = [self.viewControllers objectAtIndex:j];
                for (int i = 0; i < ignoreList.count; i++) {
                    NSString* temp = [ignoreList objectAtIndex:i];
                    if ([[NSString stringWithFormat:@"%@_%i",NSStringFromClass([vc class]),j] isEqualToString:temp]) {
                        hasVC = YES;
                        [ignoreList removeObject:temp];
                        break;
                    }
                }
                if (!hasVC) {
                    UIViewController* controller = [self.viewControllers objectAtIndex:j];
                    UIViewController* top = [self.viewControllers objectAtIndex:count-1];
                    [self popToViewController:controller animated:animated];
                    return top;
                }
            }
        }
    }
    return [self swizzle_popViewControllerAnimated:animated];
}
    
-(void)pushViewControllerIgnoreSelfWhenBack:(UIViewController *)viewController animated:(BOOL)animated{
    NSInteger count = self.viewControllers.count;
    if (count > 0) {
        UIViewController* top = [self.viewControllers objectAtIndex:count-1];
        NSMutableArray *ignoreList = [self getIgnoreList];
        [ignoreList insertObject:[NSString stringWithFormat:@"%@_%i",NSStringFromClass([top class]),count-1] atIndex:0];
        objc_setAssociatedObject(self, @"ignoreList", ignoreList, OBJC_ASSOCIATION_RETAIN);
    }
    [self pushViewController:viewController animated:animated];
}
    
-(NSMutableArray*) getIgnoreList{
    NSMutableArray *ignoreList = (NSMutableArray*)objc_getAssociatedObject(self, @"ignoreList");
    if(ignoreList == nil)
    {
        ignoreList = [[NSMutableArray alloc] init];
        objc_setAssociatedObject(self, @"ignoreList", ignoreList, OBJC_ASSOCIATION_RETAIN);
    }
    return ignoreList;
}

@end
