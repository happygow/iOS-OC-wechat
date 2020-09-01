//
//  headCollectionViewHeader.h
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface headCollectionViewHeader : UICollectionView<IGListBindable>

@property(nonatomic,strong)UIImageView *headImage;
@property(nonatomic,strong)UIImageView *headAvatar;
@property(nonatomic,strong)UILabel *headUserName;

-(void)bindViewModel:(dgListCellModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
