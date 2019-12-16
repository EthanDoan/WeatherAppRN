//
//  Weather.m
//  WeatherAppRN
//
//  Created by Doan Van Phuong on 12/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "Weather.h"
#import "WeatherApi.h"

@implementation Weather

- (void)getWeather:(void(^)(NSArray *))completion {
    [[WeatherApi shared] getYesterdayWeather:^(NSArray * _Nonnull resultArr) {
        
        
        
        
        completion(resultArr);
    }];
}

@end
