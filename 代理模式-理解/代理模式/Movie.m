//
//  Movie.m
//  ShowMovie
//
//  Created by nixinsheng on 15-5-21.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import "Movie.h"
#define TITLE @"TITLE"
#define BoxOfficeGross @"BoxOfficeGross"
#define Summary @"Summary"

@implementation Movie
-(id)initWithTitle:(NSString*)_t andBoxOfficeGross:(NSString*)_b andSummary:(NSString*)_s{
    if (self = [super init]) {
        self.title = _t;
        self.boxOfficeGross = [NSNumber numberWithInteger:[_b integerValue]];
        self.summary = _s;
    }
    return self;
}
-(NSComparisonResult) compareBox:(Movie*) m
{
    //升序
    return [self.boxOfficeGross compare:m.boxOfficeGross];
}
-(NSComparisonResult) compareNoBox:(Movie*) m
{
    //降序
    return [m.boxOfficeGross compare:self.boxOfficeGross];
}
#pragma mark NSCoding
//归档
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.title forKey:TITLE];
    [aCoder encodeObject:self.boxOfficeGross forKey:BoxOfficeGross];
    [aCoder encodeObject:self.summary forKey:Summary];
}

//解档 初始化对象
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        self.title = [aDecoder decodeObjectForKey:TITLE];
        self.boxOfficeGross =[aDecoder decodeObjectForKey:BoxOfficeGross];
        self.summary =[aDecoder decodeObjectForKey:Summary];
    }
    return self;
}

#pragma mark NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    Movie* movie = [[Movie alloc]initWithTitle:_title andBoxOfficeGross:[NSString stringWithFormat:@"%zi",_boxOfficeGross] andSummary:_summary];
    return movie;
}

-(NSString*)description{
    return [NSString stringWithFormat:@"Movie Title-%@,BoxOfficeGross-%@,Summary-%@",_title,_boxOfficeGross,_summary];
}

@end
