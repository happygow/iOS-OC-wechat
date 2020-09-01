//
//  naviView.h
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol naviViewDelegate <NSObject>

@optional

- (void)naviBackClick;// 返回
- (void)naviCameraClick;// 照相

@end


@interface naviView : UIView
@property (nonatomic, weak) id <naviViewDelegate> delegate;
@property (nonatomic, strong) UIView *naviView;
@property (nonatomic, strong) UILabel *naviLabel;
@property (nonatomic, assign) BOOL isScrollUp;
@property (nonatomic, strong) UIButton *cameraBtn;
@property (nonatomic, strong) UIButton *backBtn;
@end

NS_ASSUME_NONNULL_END
