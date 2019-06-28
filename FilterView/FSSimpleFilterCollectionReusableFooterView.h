//
//  FSSimpleFilterCollectionReusableFooterView.h
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/25.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ExpandBlock)(UIButton *expandBtn);

@interface FSSimpleFilterCollectionReusableFooterView : UICollectionReusableView

+ (CGSize)size;
+ (NSString *)identifier;

- (void)setExpandEvent:(ExpandBlock)expandComplete btnStatus:(BOOL)isExpand;

@end
