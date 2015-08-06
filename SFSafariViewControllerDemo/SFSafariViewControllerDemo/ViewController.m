//
//  ViewController.m
//  SFSafariViewControllerDemo
//
//  Created by Cocoon Jin on 15/7/29.
//  Copyright © 2015年 Kdanmobile. All rights reserved.
//

#import "ViewController.h"

@import SafariServices;

@interface ViewController () <SFSafariViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onButtonClick_AboutUs:(id)sender
{
    NSString *urlString = @"http://www.kdanmobile.com";
    
    SFSafariViewController *sfViewControllr = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:urlString]];
    sfViewControllr.delegate = self;
    
    [self presentViewController:sfViewControllr animated:YES completion:^{
        
    }];
}

- (IBAction)onButtonClick_Products:(id)sender
{
    NSString *urlString = @"http://www.kdanmobile.com/en/products.html";
    
    SFSafariViewController *sfViewControllr = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:urlString]];
    sfViewControllr.delegate = self;
    
    [self presentViewController:sfViewControllr animated:YES completion:^{
        
    }];
}

- (void)safariViewControllerDidFinish:(nonnull SFSafariViewController *)controller
{
    [controller dismissViewControllerAnimated:YES completion:nil];
}

@end
