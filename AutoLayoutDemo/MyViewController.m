//
//  ViewController.m
//  Layout
//
//  Created by Shagun Madhikarmi on 12/02/2014.
//  Copyright (c) 2014 ustwo. All rights reserved.
//

#import "MyViewController.h"
#import "MyView.h"


@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myView.titleLabel.text = @"abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz";
}

- (MyView *)myView
{
    return (MyView *)self.view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
