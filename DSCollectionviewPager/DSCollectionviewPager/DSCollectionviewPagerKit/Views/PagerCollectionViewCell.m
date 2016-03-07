//
//  PagerCollectionViewCell.m
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/7.
//  Copyright © 2016年 sean. All rights reserved.
//

#import "PagerCollectionViewCell.h"

@implementation PagerCollectionViewCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Init collectionCell.xib
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"PagerCollectionViewCell" owner:self options:nil];
        
        // If is not exist，return nil
        if (arrayOfViews.count < 1) {
            return nil;
        }
        // If xib view is not UICollectionViewCell class，return nil
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        // load nib
        self = [arrayOfViews objectAtIndex:0];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

@end
