//
//  ZSViewController.m
//  ZSPop
//
//  Created by j-zhaozuotong on 02/04/2017.
//  Copyright (c) 2017 j-zhaozuotong. All rights reserved.
//

#import "ZSViewController.h"
#import "ZSTest1ViewController.h"
#import "ZSTest3ViewController.h"

@interface ZSViewController ()

@end

@implementation ZSViewController
    
-(void) viewWillAppear:(BOOL)animated{
//    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width - 110, 36);
    [self.view addSubview:button];
    CGPoint center1 = CGPointMake(self.view.center.x, self.view.center.y-36);
    button.center = center1;
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Start" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 10;
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width - 110, 36);
    [self.view addSubview:btn];
    CGPoint center2 = CGPointMake(self.view.center.x, self.view.center.y+36);
    btn.center = center2;
    [btn addTarget:self action:@selector(clickTest:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"Successive" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor lightGrayColor];
    btn.layer.masksToBounds = YES;
    btn.layer.cornerRadius = 10;
}

-(void) click:(UIButton*)sender{
    ZSTest1ViewController* vc = [[ZSTest1ViewController alloc] initWithNibName:@"ZSTest1ViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}
    
-(void) clickTest:(UIButton*)sender{
    ZSTest3ViewController* vc = [[ZSTest3ViewController alloc] initWithNibName:@"ZSTest3ViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
