//
//  ZSTest2ViewController.m
//  ZSPop
//
//  Created by zuoshen on 2017/2/6.
//  Copyright © 2017年 j-zhaozuotong. All rights reserved.
//

#import "ZSTest2ViewController.h"

@interface ZSTest2ViewController ()
    
@property (strong, nonatomic) IBOutlet UIButton *button;

@end

@implementation ZSTest2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button.layer.masksToBounds = YES;
    self.button.layer.cornerRadius = 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
}


@end
