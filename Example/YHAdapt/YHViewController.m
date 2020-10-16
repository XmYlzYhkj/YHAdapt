//
//  YHViewController.m
//  YHAdapt
//
//  Created by zhengxiaolang on 10/16/2020.
//  Copyright (c) 2020 zhengxiaolang. All rights reserved.
//

#import "YHViewController.h"

@interface YHViewController ()

@end

@implementation YHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = @"this is a test";
    cell.backgroundColor = [UIColor greenColor];
    cell.frame = CGRectMake(50, 100, 200, 80);
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 0, 100, 40)];
    btn.backgroundColor = UIColor.whiteColor;
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [cell addSubview:btn];
    
    [self.view addSubview:cell];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)clickBtn{
    NSLog(@"123");
}

@end
