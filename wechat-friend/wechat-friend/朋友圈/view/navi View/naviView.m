//
//  naviView.m
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "naviView.h"

@implementation naviView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildUi];
    }
    return self;
}
- (void)buildUi
{
    
    UIView *navV = [[UIView alloc]initWithFrame:self.bounds];
    navV.backgroundColor = RGBCOLOR(239, 239, 239);
    navV.alpha = 0;
    [self addSubview:navV];
    self.naviView = navV;
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(20, navV.height - 40 , 30, 30);
    [backBtn setImage:[UIImage imageNamed:@"back_w"] forState:0];
    [self addSubview:backBtn];
    backBtn.tag = 1;
    [backBtn addTarget:self action:@selector(navClick:) forControlEvents:1<<6];
    self.backBtn = backBtn;
    
    UIButton *camareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    camareBtn.frame = CGRectMake(SCREEN_WIDTH - 20 - 30,navV.height - 40 , 30, 30);
    [camareBtn setImage:[UIImage imageNamed:@"camera_w"] forState:0];
    [self addSubview:camareBtn];
    camareBtn.tag = 2;
    [camareBtn addTarget:self action:@selector(navClick:) forControlEvents:1<<6];
    self.cameraBtn = camareBtn;
    
    
    UILabel *navLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, navV.height - 40, SCREEN_WIDTH, 30)];
    navLabel.textAlignment = 1;
    navLabel.text = @"朋友圈";
    navLabel.alpha = 0;
    navLabel.font = [UIFont boldSystemFontOfSize:17];
    [self addSubview:navLabel];
    self.naviLabel = navLabel;
}
- (void)setIsScrollUp:(BOOL)isScrollUp
{
    _isScrollUp = isScrollUp;
    if (_isScrollUp) {
        [self.backBtn setImage:[UIImage imageNamed:@"back"] forState:0];
        [self.cameraBtn setImage:[UIImage imageNamed:@"camera"] forState:0];
    }
    else
    {
        [self.backBtn setImage:[UIImage imageNamed:@"back_w"] forState:0];
        [self.cameraBtn setImage:[UIImage imageNamed:@"camera_w"] forState:0];
    }
}

- (void)navClick:(UIButton *)btn
{
    if (btn.tag == 1) {
        if ([self.delegate respondsToSelector:@selector(naviBackClick)]) {
            [self.delegate naviBackClick];
        }
    }
    else
    {
        if ([self.delegate respondsToSelector:@selector(naviCameraClick)]) {
            [self.delegate naviCameraClick];
        }
    }
}
@end
