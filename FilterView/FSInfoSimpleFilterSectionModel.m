//
//  FSInfoSimpleFilterSectionModel.m
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/26.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import "FSInfoSimpleFilterSectionModel.h"

@implementation FSInfoSimpleFilterSectionModel

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _sectionItemSelectArray = [NSMutableArray array];
        _sectionItemArray = [NSMutableArray array];
    }
    
    return self;
}

@end
