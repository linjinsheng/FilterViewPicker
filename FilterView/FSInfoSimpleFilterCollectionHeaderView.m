//
//  FSInfoSelectCollectionReusableView.m
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/25.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import "FSInfoSimpleFilterCollectionHeaderView.h"

@interface FSInfoSimpleFilterCollectionHeaderView ()

@property (nonatomic, strong) UILabel *tagLabel;

@end

@implementation FSInfoSimpleFilterCollectionHeaderView

- (UILabel *)tagLabel
{
    if (_tagLabel == nil)
    {
        _tagLabel = [[UILabel alloc] init];
        _tagLabel.text = @"领域";
        _tagLabel.textAlignment = NSTextAlignmentCenter;
        _tagLabel.font = FilterLbFont;
        _tagLabel.textColor = [Tools getColor: @"555555"isSingleColor:YES];
//        _tagLabel.textColor = [UIColor blackColor];
//        [_tagLabel setBackgroundColor:[UIColor redColor]];
        [_tagLabel sizeToFit];
        [_tagLabel setFrame:CGRectMake(10, (self.frame.size.height - 20)/2.0, _tagLabel.frame.size.width + 5, 20)];
        
        [self addSubview:_tagLabel];
    }
    
    return _tagLabel;
}

+ (CGSize)size
{
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 40); 
}

+ (NSString *)identifier
{
    return @"headerView";
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self tagLabel];
    }
    
    return self;
}

- (void)updateShowName:(NSString *)sectionName
{
    if ([_tagLabel.text isEqualToString:sectionName])
    {
        return;
    }
    
    _tagLabel.text = sectionName;
    [_tagLabel sizeToFit];
    [_tagLabel setFrame:CGRectMake(10, (self.frame.size.height - 20)/2.0, _tagLabel.frame.size.width + 5, 20)];
}

@end
