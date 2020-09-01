//
//  headCollectionViewHeader.m
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "headCollectionViewHeader.h"

@implementation headCollectionViewHeader
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        CGFloat avatorW = 80;
        CGFloat headImageVerIndentation = 60;
        CGFloat space = 20;
        
        UIImageView *headImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, self.bounds.size.height - headImageVerIndentation)];
        headImage.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:headImage];
        
        UIImageView *headAvatar = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - avatorW - 16, self.bounds.size.height- avatorW - headImageVerIndentation + space, avatorW, avatorW)];
        headAvatar.layer.cornerRadius = 10;
        headAvatar.layer.masksToBounds = YES;
        [self addSubview:headAvatar];
        
        UILabel *headUserName = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(headImage.frame) - space - 20, CGRectGetMinX(headAvatar.frame) - space, 30)];
        headUserName.textAlignment = 2;
        headUserName.textColor = [UIColor whiteColor];
        headUserName.font = [UIFont systemFontOfSize:25];
        [self addSubview:headUserName];
        
        self.headImage = headImage;
        self.headAvatar = headAvatar;
        self.headUserName = headUserName;
    }
    return self;
}

- (void)bindViewModel:(dgListCellModel *)viewModel
{
    [self.headImage sd_setImageWithURL:[NSURL URLWithString:viewModel.headImage]];
    [self.headAvatar sd_setImageWithURL:[NSURL URLWithString:viewModel.headAvatar]];
    self.headUserName.text = viewModel.headUserName;
}





@end
