//
//  ViewController.m
//  SKStoreReviewControllerTest
//
//  Created by qfu on 04/02/2017.
//  Copyright © 2017 qfu. All rights reserved.
//

#import "ViewController.h"
@import StoreKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *iconName = [[UIApplication sharedApplication] alternateIconName];
    NSLog(@"当前图标的名字 ： %@",iconName);
}

- (IBAction)requestReview:(id)sender {
    [SKStoreReviewController requestReview];
}

- (IBAction)blueIcon:(id)sender {
    [[UIApplication sharedApplication] setAlternateIconName:@"blue" completionHandler:^(NSError * _Nullable error) {
    }];
}

- (IBAction)pinkIcon:(id)sender {
    [[UIApplication sharedApplication] setAlternateIconName:@"pink" completionHandler:^(NSError * _Nullable error) {
    }];
}

@end
