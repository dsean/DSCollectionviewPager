//
//  View2.m
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/8.
//  Copyright © 2016年 sean. All rights reserved.
//

#import "View2.h"

@implementation View2

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"View2" owner:nil options:nil];
        View2 *view2 = [views lastObject];
        self = view2;
        self.frame = frame;
        return self;
    }
    return self;
}

@end
