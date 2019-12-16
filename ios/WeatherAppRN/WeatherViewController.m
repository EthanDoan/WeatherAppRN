//
//  WeatherViewController.m
//  WeatherAppRN
//
//  Created by Doan Van Phuong on 12/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "WeatherViewController.h"
#import <React/RCTRootView.h>
#import "NSDate+Extension.h"
#import "WeatherApi.h"
#import "Weather.h"

@interface WeatherViewController ()
@property (strong, nonatomic) RCTRootView *rootView;
@end

@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    Weather *weather = [[Weather alloc] init];
    [weather getWeatherInfo:^(NSArray * _Nonnull resultArr) {
        if (!resultArr) {
            NSLog(@"Fail to get weather data");
            return;
        }
        NSDictionary *initialProps = @{
            @"list": resultArr
        };
        dispatch_async(dispatch_get_main_queue(), ^{
            self.rootView = [[RCTRootView alloc] initWithBundleURL: jsCodeLocation moduleName: @"WeatherList" initialProperties: initialProps launchOptions: nil];
            self.view = self.rootView;
        });
    }];
}





@end
