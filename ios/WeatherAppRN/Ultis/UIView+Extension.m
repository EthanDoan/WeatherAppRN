//
//  UIView+Extension.m
//  LoginTemplate
//
//  Created by Doan Van Phuong on 11/14/18.
//  Copyright © 2018 Phuong Doan. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)showLoadingIndicator {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        [spinner setFrame:self.frame];
        spinner.hidesWhenStopped = YES;
        [self addSubview:spinner];
        [spinner startAnimating];
    });
}

- (void)hideLoadingIndicator {
    NSArray *subViews = self.subviews;
    if (subViews.count > 0) {
        for (UIView *view in subViews) {
            if ([view isKindOfClass:[UIActivityIndicatorView class]]) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    UIActivityIndicatorView *spinner = (UIActivityIndicatorView *)view;
                    [spinner stopAnimating];
                });
            }
        }
    }
}

@end
