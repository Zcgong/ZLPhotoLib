//
//  PickerPhotosView.m
//  ZLAssetsPickerDemo
//
//  Created by 张磊 on 14-11-19.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "PickerPhotosView.h"
#import "UIView+Extension.h"

@implementation PickerPhotosView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewFlowLayout *)layout{
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(frame.size.width - 20, frame.size.height);
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.minimumLineSpacing = 20;
    
    [self setup];
    
    return [super initWithFrame:frame collectionViewLayout:flowLayout];
}

- (void) setup{
    self.pagingEnabled = YES;
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;


}

@end
