//
//  FSSimpleFilterCollectionReusableFooterView.m
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/25.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import "FSSimpleFilterCollectionReusableFooterView.h"

@interface FSSimpleFilterCollectionReusableFooterView ()

@property (nonatomic, strong) UIButton *expandBtn;

@property (nonatomic, copy)   ExpandBlock expandComplete;

@end

@implementation FSSimpleFilterCollectionReusableFooterView

- (UIButton *)expandBtn
{
    if (_expandBtn == nil)
    {
        /**行业缩回*/
        _expandBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _expandBtn.frame = CGRectMake(FSScreenWidth- 60, (self.frame.size.height - 20)/2.0, 50, 20);
        [_expandBtn setTitle: @"缩回" forState: UIControlStateNormal];
        [_expandBtn setTitle: @"展开" forState: UIControlStateSelected];
        _expandBtn.titleLabel.font = MsgTextFont;
//        _expandBtn.backgroundColor = [UIColor greenColor];
//        [_expandBtn setTitleColor:[Tools getColor:@"488FFF" isSingleColor:YES] forState:UIControlStateNormal];
        
        [_expandBtn setTitleColor:[Tools getColor:@"488FFF" isSingleColor:YES] forState:UIControlStateNormal];
        
        [_expandBtn setImage:[UIImage imageNamed:@"NotExpand"] forState:UIControlStateNormal];
        [_expandBtn setImage:[UIImage imageNamed:@"Expand"] forState:UIControlStateSelected];
        [_expandBtn setTitleEdgeInsets:UIEdgeInsetsMake(0,-_expandBtn.imageView.frame.size.width, 0, _expandBtn.imageView.frame.size.width + 5)];
        [_expandBtn setImageEdgeInsets:UIEdgeInsetsMake(0, _expandBtn.titleLabel.bounds.size.width, 0, -_expandBtn.titleLabel.bounds.size.width - 5)];
        [_expandBtn addTarget:self action:@selector(industryWithdrew:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_expandBtn];
    }
    
    return _expandBtn;
}

- (void)industryWithdrew:(UIButton *)sender
{
    if (_expandComplete != nil)
    {
        _expandComplete(sender);
    }
}

- (void)setExpandEvent:(ExpandBlock)expandComplete btnStatus:(BOOL)isExpand
{
    _expandComplete = expandComplete;
    
    self.expandBtn.selected = !isExpand;
}

+ (CGSize)size
{
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 40);
}

+ (NSString *)identifier
{
    return @"footerView";
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self expandBtn];
    }
    
    return self;
}

@end
