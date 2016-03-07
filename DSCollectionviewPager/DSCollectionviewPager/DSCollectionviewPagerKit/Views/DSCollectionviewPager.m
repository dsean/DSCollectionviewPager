//
//  DSCollectionviewPager.m
//  DSCollectionviewPager
//
//  Created by Sean Yang on 2016/3/7.
//  Copyright © 2016年 sean. All rights reserved.
//

#import "DSCollectionviewPager.h"
#import "PagerCollectionViewCell.h"

@interface DSCollectionviewPager () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation DSCollectionviewPager

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"DSCollectionviewPagerView" owner:nil options:nil];
        DSCollectionviewPager *dSCollectionviewPager = [views lastObject];
        self = dSCollectionviewPager;
        self.frame = frame;
        return self;
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    
    self.pagerCollectionView.delegate = self;
    self.pagerCollectionView.dataSource = self;
    [self.pagerCollectionView registerClass:[PagerCollectionViewCell class] forCellWithReuseIdentifier:@"PagerCollectionViewCell"];
    
}

- (void)reloadUI {
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CalendarWeekCollectionViewCell *cell = (CalendarWeekCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CalendarWeekCollectionViewCell" forIndexPath:indexPath];
    DateManarger *dateManarger = [DateManarger sharedDateManarger];
    if (dateManarger.status == DSCALENDAR_STYLE_WEEK) {
        cell.currentWeek = [self.calendar week:[[DateManarger sharedDateManarger] seletedDate]];
    }
    else {
        cell.currentWeek = indexPath.item + 1;
    }
    [cell reloadUI];
    cell.calendar = self.calendar;
    cell.calendar.calendar = self.calendar.calendar;
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    return CGSizeMake(screenWidth, 42);
}

@end
