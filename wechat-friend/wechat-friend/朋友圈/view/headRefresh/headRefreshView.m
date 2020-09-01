//
//  headRefreshView.m
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "headRefreshView.h"
#define headHeight  60
@interface headRefreshView ()
@property (nonatomic, strong) UIImageView *rotateImage;
@end

@implementation headRefreshView
- (void)prepare
{
    [super prepare];
    self.ignoredScrollViewContentInsetTop = -60;
    self.mj_h = headHeight;
    UIImageView *rotateImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"refresh"]];
    [self addSubview:rotateImage];
    self.rotateImage = rotateImage;
    self.mj_y = -self.mj_h - self.ignoredScrollViewContentInsetTop;
}
- (void)placeSubviews
{
    [super placeSubviews];
    self.rotateImage.frame = CGRectMake(30, 30, 30, 30);
}

// 监听 scrollView 的 contentOffSet 的 改变
- (void)scrollViewPanStateDidChange:(NSDictionary *)change
{
    [super scrollViewPanStateDidChange:change];
    self.mj_y = -self.mj_h - self.ignoredScrollViewContentInsetTop;
    CGFloat pullingY = fabs(self.scrollView.mj_offsetY + 64 + self.ignoredScrollViewContentInsetTop);
    if (pullingY >= headHeight) {
        CGFloat marginY = - headHeight - (pullingY - headHeight) - self.ignoredScrollViewContentInsetTop;
        self.mj_y = marginY;
    }
    
    [UIView animateWithDuration:2 animations:^{
        self.rotateImage.transform = CGAffineTransformRotate(self.rotateImage.transform,M_PI/2);
    }];
}
- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState;
    switch (state) {
        case MJRefreshStateIdle:
            self.rotateImage.hidden = YES;
            break;
            
            case MJRefreshStatePulling:
            self.rotateImage.hidden = NO;
            break;
            
            case MJRefreshStateRefreshing:
            self.rotateImage.hidden = NO;
            break;
            
        default:
            break;
    }
}


@end
