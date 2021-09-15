//
//  Target_A.m
//  A
//
//  Created by qqqq pppp on 2021/9/15.
//

#import "Target_A.h"
#import "AViewController.h"
@interface Target_A ()

@end

@implementation Target_A

- (UIViewController *)Action_Category_ViewController:(NSDictionary *)params
{
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
