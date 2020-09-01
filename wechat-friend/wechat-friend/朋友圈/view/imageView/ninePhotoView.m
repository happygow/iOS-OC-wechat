//
//  ninePhotoView.m
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "ninePhotoView.h"
#import "ninePhotoCollectionViewCell.h"

@implementation ninePhotoView

- (instancetype)initWithFrame:(CGRect)frame
{
    UICollectionViewFlowLayout *fl = [[UICollectionViewFlowLayout alloc] init];
    fl.minimumLineSpacing = 5;
    fl.minimumInteritemSpacing = 5;
    self.backgroundColor = [UIColor whiteColor];
    self.delegate = self;
    self.dataSource = self;
    [self registerNib:[UINib nibWithNibName:@"ninePhotoCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"ninePhotoCollectionViewCell"];
    return [super initWithFrame: frame collectionViewLayout:fl];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.picAry.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ninePhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ninePhotoCollectionViewCell" forIndexPath:indexPath];
    [cell.photoImageView sd_setImageWithURL:[NSURL URLWithString:self.picAry[indexPath.item]]];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if (self.picAry.count == 1) {
        return CGSizeMake((self.bounds.size.width - 10)/2, 180);
    }
    return CGSizeMake(PHOTO_WIDTH, PHOTO_WIDTH);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //图片浏览功能
}

- (void)setPicAry:(NSArray *)picAry
{
    _picAry= picAry;
    [self reloadData];
}


@end
