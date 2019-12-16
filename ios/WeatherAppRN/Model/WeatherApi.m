//
//  WeatherApi.m
//  WeatherAppRN
//
//  Created by Doan Van Phuong on 12/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "WeatherApi.h"
#import <AFNetworking/AFHTTPSessionManager.h>
#import "NSDate+Extension.h"
#import "NSArray+BlocksKit.h"

@implementation WeatherApi

+ (instancetype)shared {
    static dispatch_once_t onceTime;
    static WeatherApi *weatherApi;
    dispatch_once(&onceTime, ^{
        weatherApi = [[WeatherApi alloc] init];
    });
    return weatherApi;
}

- (void)getYesterdayWeather:(void(^)(NSArray *))completion {
    NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow:-86400];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *url = [NSString stringWithFormat:@"https://www.metaweather.com/api/location/1100661/%@/%@/%@/", yesterday.yearString, yesterday.monthString, yesterday.dateString];
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSMutableArray *resultArr = [NSMutableArray new];
        [(NSArray *)responseObject bk_each:^(id  _Nonnull obj) {
            NSDictionary *dict = (NSDictionary *)obj;
            NSString *str = dict[@"created"];
            if ([str containsString:[NSString stringWithFormat:@"%@-%@-%@",yesterday.yearString, yesterday.monthString, yesterday.dateString]]) {
                [resultArr addObject:dict];
            }
        }];
        completion(resultArr);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error.localizedDescription);
        completion(nil);
    }];
}

@end
