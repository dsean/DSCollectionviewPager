//
//  View1.m
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/8.
//  Copyright © 2016年 sean. All rights reserved.
//

#import "View1.h"

@implementation View1

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"View1" owner:nil options:nil];
        View1 *view1 = [views lastObject];
        self = view1;
        self.frame = frame;
        return self;
    }
    return self;
}

@end
