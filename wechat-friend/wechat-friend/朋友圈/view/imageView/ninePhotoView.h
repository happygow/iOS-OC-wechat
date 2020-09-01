//
//  ninePhotoView.h
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ninePhotoView : UICollectionView<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong)NSArray *picAry;

@end

NS_ASSUME_NONNULL_END
