//
//  FSInfoSimpleFilterCollectionViewCell.m
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/25.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import "FSInfoSimpleFilterCollectionViewCell.h"

@interface FSInfoSimpleFilterCollectionViewCell ()

@property (nonatomic, strong) UILabel *tagLabel;

//@property (strong,nonatomic) FSInfoSimpleFilterTag *tmpSender; //中间量

@end

@implementation FSInfoSimpleFilterCollectionViewCell

#pragma mark - ******** 属性方法重写

- (UILabel *)tagLabel
{
    if (_tagLabel == nil)
    {
        _tagLabel = [[UILabel alloc] init];
        _tagLabel.text = @"标签";
        _tagLabel.textAlignment = NSTextAlignmentCenter;
        _tagLabel.font = FSTextFieldFont;
        [_tagLabel setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        
        [self.contentView addSubview:_tagLabel];
    }
    
    return _tagLabel;
}

#pragma mark - ******** 数据

+ (CGSize)size
{
    CGFloat width = 90;
    if(FSScreenWidth == FSScreen4_7InchSize_width)
    {
        width = 105;
    }
    else if(FSScreenWidth == FSScreen5_5InchSize_width)
    {
        width = 110;
    }
    
    return CGSizeMake(width, 35);
}

+ (NSString *)identifier
{
    return @"SettingTagsCollectionViewCellIdentifier";
}

- (void)updateDataSource:(FSInfoSimpleFilterTag *)userTag
{

    if (userTag.tagDidSelect.boolValue)
    {
        [self.tagLabel setTextColor:[Tools getColor:@"FFFFFF" isSingleColor:YES]];
//        self.tagLabel.backgroundColor = [UIColor orangeColor];
        self.tagLabel.backgroundColor = [Tools getColor:@"F6B65B" isSingleColor:YES];
    }
    else
    {
        [self.tagLabel setTextColor:[Tools getColor:@"96A1AF" isSingleColor:YES]];
        self.tagLabel.backgroundColor = [Tools getColor:@"F7F7F7" isSingleColor:YES];
    }
    self.tagLabel.layer.cornerRadius = 6;
    self.tagLabel.layer.masksToBounds = YES;
    self.tagLabel.text = userTag.tagName;
}

#pragma mark - ********

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        self.selected = NO;
    }
    
    return self;
}




@end




