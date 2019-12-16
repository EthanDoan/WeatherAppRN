//
//  WeatherViewController.m
//  WeatherAppRN
//
//  Created by Doan Van Phuong on 12/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "WeatherViewController.h"
#import <React/RCTRootView.h>

@interface WeatherViewController ()
@property (strong, nonatomic) RCTRootView *rootView;
@end

@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    _rootView = [[RCTRootView alloc] initWithBundleURL: jsCodeLocation moduleName: @"WeatherList" initialProperties:
                 @{
                     @"scores" : @[
                             @{
                                 @"name" : @"Alex",
                                 @"value": @"42"
                             },
                             @{
                                 @"name" : @"Joel",
                                 @"value": @"10"
                             }
                     ]
    } launchOptions: nil];
    
    self.view = _rootView;
    
}



@end
