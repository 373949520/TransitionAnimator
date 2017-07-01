//
//  ViewController.m
//  TransitionAnimator
//
//  Created by xiaojie on 2017/7/1.
//  Copyright © 2017年 meitu. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "PlayViewTransitionAnimator.h"
@interface ViewController () <UIViewControllerTransitioningDelegate>


@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)btnClick:(id)sender {
    TestViewController *ctl = [[TestViewController alloc] init];
    ctl.transitioningDelegate = self;
    self.modalPresentationStyle = UIModalPresentationNone;
    [self presentViewController:ctl animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIViewControllerAnimatedTransitioning
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    PlayViewTransitionAnimator *animator = [[PlayViewTransitionAnimator alloc] init];
    return animator;
}


//| ----------------------------------------------------------------------------
//  The system calls this method on the presented view controller's
//  transitioningDelegate to retrieve the animator object used for animating
//  the dismissal of the presented view controller.  Your implementation is
//  expected to return an object that conforms to the
//  UIViewControllerAnimatedTransitioning protocol, or nil if the default
//  dismissal animation should be used.
//
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    PlayViewTransitionAnimator *animator = [[PlayViewTransitionAnimator alloc] init];
    
    return animator;
}


@end
