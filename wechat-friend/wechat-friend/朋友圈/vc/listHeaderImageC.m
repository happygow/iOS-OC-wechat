//
//  listHeaderImageC.m
//  wechat-friend
//
//  Created by yckj on 2020/9/1.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "listHeaderImageC.h"
#import "headCollectionViewHeader.h"

@implementation listHeaderImageC
- (NSInteger)numberOfItems
{
    if (_object.headImage.length > 0) {
        return 1;
    }
    return 0;
}


- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return CGSizeMake(SCREEN_WIDTH, 400);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
     headCollectionViewHeader *cell = [self.collectionContext dequeueReusableCellOfClass:[headCollectionViewHeader class] forSectionController:self atIndex:index];
       [cell bindViewModel:[[dgListCellModel alloc]initWithModel:_object]];
       return cell;
}

- (void)didUpdateToObject:(id)object
{
    _object = object;
}

@end
