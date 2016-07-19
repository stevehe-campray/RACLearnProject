//
//  ViewController.m
//  LearnRacProject
//
//  Created by hejingjin on 16/7/18.
//  Copyright © 2016年 Chinahr. All rights reserved.
//

#import "ViewController.h"
#import "loginViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f",SCREEN_WIDTH);
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 40, 100, 30)];
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}


-(void)buttonPressed:(UIButton *)sender{
    
    loginViewController *loginvc = [[loginViewController alloc] init];
    [self presentViewController:loginvc  animated:NO  completion:nil];
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
