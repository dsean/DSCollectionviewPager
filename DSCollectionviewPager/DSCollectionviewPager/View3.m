//
//  View3.m
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/8.
//  Copyright © 2016年 sean. All rights reserved.
//

#import "View3.h"

@implementation View3

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"View3" owner:nil options:nil];
        View3 *view3 = [views lastObject];
        self = view3;
        self.frame = frame;
        self.text1 = 0;
        self.label1.text = [NSString stringWithFormat:@"%d",self.text1];
        return self;
    }
    return self;
}

- (IBAction)touchButton1:(UIButton *)sender {
    self.text1++;
    self.label1.text = [NSString stringWithFormat:@"%d",self.text1];
}

@end
