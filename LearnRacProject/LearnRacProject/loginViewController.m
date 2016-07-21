//
//  loginViewController.m
//  LearnRacProject
//
//  Created by hejingjin on 16/7/18.
//  Copyright © 2016年 Chinahr. All rights reserved.
//

#import "loginViewController.h"

@interface loginViewController ()

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self SetUpsigle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)SetUpsigle{
    
    RACSignal *usernamesignal = [self.nameLabel.rac_textSignal map:^id(NSString *value) {
        NSLog(@"%@",value);
        NSInteger length = value.length;
        if (length > 1) {
            return @(YES);
        }
            return @(NO);
    }];
    
    RAC(self.submitButton,enabled) = [RACSignal combineLatest:@[usernamesignal] reduce:^id(NSNumber *isUsernameCorrect){
        if (isUsernameCorrect.boolValue) {
            [self.submitButton setTitle:@"111" forState:UIControlStateNormal];
        }else{
            [self.submitButton setTitle:@"提交" forState:UIControlStateNormal];
        }
        return @(isUsernameCorrect.boolValue);
    }];
    
    [self.submitButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void)buttonPressed:(UIButton *)submitButton{
    NSLog(@"1111");
}

@end
