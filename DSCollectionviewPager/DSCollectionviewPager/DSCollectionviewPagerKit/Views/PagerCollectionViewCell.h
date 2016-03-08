//
//  PagerCollectionViewCell.h
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/7.
//  Copyright © 2016年 sean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PagerCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *pageView;
@property (weak, nonatomic) IBOutlet UILabel *pageCount;

@end
