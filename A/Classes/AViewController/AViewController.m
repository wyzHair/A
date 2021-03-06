//
//  AViewController.m
//  A
//
//  Created by qqqq pppp on 2021/9/15.
//

#import "AViewController.h"

@interface AViewController ()
@property (nonatomic, strong) UIButton *pushBViewControllerButton;
@end

@implementation AViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    [self.pushBViewControllerButton sizeToFit];
    self.pushBViewControllerButton.frame = CGRectMake(100, 100, 100, 100);
}

#pragma mark - event response
- (void)didTappedPushBViewControllerButton:(UIButton *)button
{
    
    NSLog(@"A___response");
//    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
//    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton
{
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}

@end
