//
//  UINavigationController+ZSPopCategory.h
//  Pods
//
//  Created by zuoshen on 2017/2/4.
//
//

#import <UIKit/UIKit.h>

@interface UINavigationController (ZSPopCategory)
    
- (void)pushViewControllerIgnoreSelfWhenBack:(UIViewController *)viewController animated:(BOOL)animated;

@end
