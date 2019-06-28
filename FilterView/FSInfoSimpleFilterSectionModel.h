//
//  FSInfoSimpleFilterSectionModel.h
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/26.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, InfoSectionType)
{
    InfoSectionTypeField,      // 领域
    InfoSectionTypeTurn,       // 轮次
    InfoSectionTypeDate,       // 时间段
    InfoSectionTypePosition,   // 地域
};

@interface FSInfoSimpleFilterSectionModel : NSObject

//分区
@property (nonatomic, assign) InfoSectionType sectionType;
@property (nonatomic, copy)   NSString *sectionName;
@property (nonatomic, strong) NSNumber *sectionExpand;
@property (nonatomic, assign) NSInteger sectionItemCountNoExpand;
@property (nonatomic, strong) NSMutableArray *sectionItemArray; //全部
@property (nonatomic, strong) NSMutableArray *sectionItemSelectArray; //已选

@end
