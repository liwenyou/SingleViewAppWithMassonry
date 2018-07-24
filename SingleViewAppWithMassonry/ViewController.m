//
//  ViewController.m
//  SingleViewAppWithMassonry
//
//  Created by 李文友 on 2018/5/29.
//  Copyright © 2018年 李文友. All rights reserved.
//

#import "ViewController.h"

#import "MyViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonAction:(UIButton *)sender {
    MyViewController *vc = [MyViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
