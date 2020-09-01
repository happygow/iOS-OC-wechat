//
//  listContentC.m
//  wechat-friend
//
//  Created by yckj on 2020/9/1.
//  Copyright © 2020 zxx. All rights reserved.
//

#import "listContentC.h"
#import "contentCollectionViewCell.h"

@implementation listContentC
- (NSInteger)numberOfItems
{
    if (_object.luserName.length < 1) {
        return 0;
    }
    return 1;
}

-(CGSize)sizeForItemAtIndex:(NSInteger)index
{
    dgListCellModel *model = [[dgListCellModel alloc] initWithModel:_object];
    return CGSizeMake(SCREEN_WIDTH, model.cellHeight);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    contentCollectionViewCell *cell = [self.collectionContext dequeueReusableCellOfClass:[contentCollectionViewCell class] forSectionController:self atIndex:index];
    [cell bindViewModel:[[dgListCellModel alloc] initWithModel:_object]];
    return cell;
}
- (void)didUpdateToObject:(id)object
{
    _object = object;
}

@end
