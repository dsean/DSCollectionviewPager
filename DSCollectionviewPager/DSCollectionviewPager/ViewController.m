//
//  ViewController.m
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/7.
//  Copyright © 2016年 sean. All rights reserved.
//

#import "ViewController.h"
#import "DSCollectionviewPager.h"
#import "View1.h"
#import "View2.h"
#import "View3.h"

@interface ViewController ()

@property (strong, nonatomic) DSCollectionviewPager *pager;
@property (weak, nonatomic) IBOutlet UIView *pagerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *pagers = [NSMutableArray array];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    [pagers addObject:[[View1 alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 100)]];
    [pagers addObject:[[View2 alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 200)]];
    [pagers addObject:[[View3 alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 300)]];
    self.pager = [[DSCollectionviewPager alloc] initWithArrayView:pagers andWithFrame:self.pagerView.bounds];
    [[self pagerView] addSubview:self.pager];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations {
    // View is always upwards.
    return UIInterfaceOrientationMaskPortrait;
}

@end
