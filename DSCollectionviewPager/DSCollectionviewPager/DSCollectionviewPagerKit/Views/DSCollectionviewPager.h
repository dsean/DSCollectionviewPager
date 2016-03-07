//
//  DSCollectionviewPager.h
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/7.
//  Copyright © 2016年 sean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSCollectionviewPager : UIView

@property (weak, nonatomic) IBOutlet UICollectionView *pagerCollectionView;

- (void)reloadUI;

@end
