//
//  FSInfoSelectCollectionReusableView.h
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/25.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSInfoSimpleFilterCollectionHeaderView : UICollectionReusableView

+ (CGSize)size;
+ (NSString *)identifier;

- (void)updateShowName:(NSString *)sectionName;

@end
