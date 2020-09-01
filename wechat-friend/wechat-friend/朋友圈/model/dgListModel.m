//
//  dgListModel.m
//  wechat-friend
//
//  Created by yckj on 2020/8/31.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "dgListModel.h"

@implementation dgListModel
-(id<NSObject>)diffIdentifier{
    return self;
}
-(BOOL)isEqualToDiffableObject:(id<IGListDiffable>)object{
    return [self isEqual:object];
}
@end
