//
//  FSInfoSimpleFilterTag.h
//  FSIPM
//
//  Created by eddy_Mac on 2017/4/25.
//  Copyright © 2017年 nickwong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSInfoSimpleFilterTag : NSObject

//标签 
@property (nonatomic, copy)   NSString *tagName;
@property (nonatomic, copy)   NSString *tagId;
@property (nonatomic, strong) NSNumber *tagDidSelect;

@end
