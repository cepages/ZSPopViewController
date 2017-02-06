//
//  ZSViewController.m
//  ZSPop
//
//  Created by j-zhaozuotong on 02/04/2017.
//  Copyright (c) 2017 j-zhaozuotong. All rights reserved.
//

#import "ZSViewController.h"
#import "ZSTest1ViewController.h"

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
    button.center = self.view.center;
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Start" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 10;
}

-(void) click:(UIButton*)sender{
    ZSTest1ViewController* vc = [[ZSTest1ViewController alloc] initWithNibName:@"ZSTest1ViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
