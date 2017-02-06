//
//  ZSTest3ViewController.m
//  ZSPop
//
//  Created by zuoshen on 2017/2/6.
//  Copyright © 2017年 j-zhaozuotong. All rights reserved.
//

#import "ZSTest3ViewController.h"

@interface ZSTest3ViewController ()
    
@property (strong, nonatomic) IBOutlet UIButton *button;

@end

@implementation ZSTest3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button.layer.masksToBounds = YES;
    self.button.layer.cornerRadius = 10;
}

- (IBAction)click:(id)sender {
    
}


@end
