//
//  FSInfoSimpleFilterCollectionViewCell.h
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/25.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FSInfoSimpleFilterTag.h"

@interface FSInfoSimpleFilterCollectionViewCell : UICollectionViewCell

+ (CGSize)size;
+ (NSString *)identifier;

- (void)updateDataSource:(FSInfoSimpleFilterTag *)userTag;

@end
