//
//  Movie.h
//  ShowMovie
//
//  Created by nixinsheng on 15-5-21.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject<NSCopying,NSCoding>
/**
 * 标题、票房、简介
 */
@property(nonatomic,strong)NSString* title;
@property(nonatomic,strong)NSNumber* boxOfficeGross;
@property(nonatomic,strong)NSString* summary;

-(id)initWithTitle:(NSString*)_t andBoxOfficeGross:(NSString*)_b andSummary:(NSString*)_s;
-(NSComparisonResult) compareBox:(Movie*) m;
-(NSComparisonResult) compareNoBox:(Movie*) m;
@end
