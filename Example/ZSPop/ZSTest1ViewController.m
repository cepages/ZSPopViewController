//
//  ZSTest1ViewController.m
//  ZSPop
//
//  Created by zuoshen on 2017/2/6.
//  Copyright © 2017年 j-zhaozuotong. All rights reserved.
//

#import "ZSTest1ViewController.h"
#import "ZSTest2ViewController.h"

@interface ZSTest1ViewController ()
    
@property (strong, nonatomic) IBOutlet UIButton *button;

@end

@implementation ZSTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button.layer.masksToBounds = YES;
    self.button.layer.cornerRadius = 10;
}

- (IBAction)click:(id)sender {
    ZSTest2ViewController* vc = [[ZSTest2ViewController alloc] initWithNibName:@"ZSTest2ViewController" bundle:nil];
    [self.navigationController pushViewControllerIgnoreSelfWhenBack:vc animated:YES];
}


@end
