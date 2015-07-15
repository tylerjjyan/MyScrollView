//
//  ViewController.m
//  MyScrollView
//
//  Created by Tyler Yan on 2015-07-14.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect bounds = self.view.bounds;
    bounds.origin.y += 100;
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    UIView *yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];

    redView.backgroundColor = [UIColor redColor];
    greenView.backgroundColor = [UIColor greenColor];
    blueView.backgroundColor = [UIColor blackColor];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:redView];
    [self.view addSubview:greenView];
    [self.view addSubview:blueView];
    [self.view addSubview:yellowView];
    
    self.scrollView = [[MyScrollView alloc]init];
    
    [self.view addSubview:self.scrollView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
