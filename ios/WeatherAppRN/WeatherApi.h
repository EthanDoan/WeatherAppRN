//
//  WeatherApi.h
//  WeatherAppRN
//
//  Created by Doan Van Phuong on 12/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeatherApi : NSObject

+ (instancetype)shared;
- (void)getYesterdayWeather:(void(^)(NSArray *))completion;

@end

NS_ASSUME_NONNULL_END
