//
//  ViewController.m
//  WeatherAppRN
//
//  Created by Doan Van Phuong on 12/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>
#import "WeatherViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showWeather:(UIButton *)sender {
    WeatherViewController *vc = [[WeatherViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
