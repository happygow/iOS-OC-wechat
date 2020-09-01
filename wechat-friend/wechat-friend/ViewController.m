//
//  ViewController.m
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "ViewController.h"
#import "pengyouquanVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(self.view.centerX - 50, self.view.centerY - 50, 100, 100);
    [btn setBackgroundImage:[UIImage imageNamed:@"wx"] forState:0];
    [self.view addSubview:btn];
    
    [btn
    addTarget:self action:@selector(wxClick) forControlEvents:1<<6];
    
    
    
    
}
-(void)wxClick {
    
    pengyouquanVC *wvc = [pengyouquanVC new];
    wvc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:wvc animated:YES completion:nil];
   
}

@end
