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

@property (strong, nonatomic) NSMutableArray *page;

@end

@implementation DSCollectionviewPager

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"DSCollectionviewPagerView" owner:nil options:nil];
        DSCollectionviewPager *dSCollectionviewPager = [views lastObject];
        self = dSCollectionviewPager;
        self.frame = frame;
        return self;
    }
    return self;
}

- (id)initWithArrayView:(NSArray *)arrayView andWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"DSCollectionviewPagerView" owner:nil options:nil];
        DSCollectionviewPager *dSCollectionviewPager = [views lastObject];
        dSCollectionviewPager.page = [[NSMutableArray alloc] initWithArray:arrayView];
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
    return [self.page count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PagerCollectionViewCell *cell = (PagerCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"PagerCollectionViewCell" forIndexPath:indexPath];
    UIView *page = self.page[indexPath.item];
    [cell addSubview: page];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
     UIView *page = self.page[indexPath.item];
    return CGSizeMake(screenWidth, page.frame.size.height);
}

@end
