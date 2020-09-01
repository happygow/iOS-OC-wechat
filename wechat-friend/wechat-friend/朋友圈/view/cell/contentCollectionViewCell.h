//
//  contentCollectionViewCell.h
//  wechat-friend
//
//  Created by yckj on 2020/9/1.
//  Copyright © 2020 zxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ninePhotoView.h"

NS_ASSUME_NONNULL_BEGIN

@interface contentCollectionViewCell : UICollectionViewCell<IGListBindable>
@property(nonatomic,strong)UIImageView *avatorImage;
@property(nonatomic,strong)UILabel *userName;
@property(nonatomic,strong)UILabel *lContent;
@property (nonatomic, strong) ninePhotoView *npv;
@property (nonatomic, assign) CGFloat cellHeight;

- (void)bindViewModel:(dgListCellModel *)vm;

@end

NS_ASSUME_NONNULL_END
