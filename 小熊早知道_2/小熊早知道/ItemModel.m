//
//  ItemModel.m
//  news_APP
//
//  Created by qingyun on 16/5/27.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ItemModel.h"
#import "Common.h"
#import "NSDate+SSDate.h"
@implementation ItemModel
+(instancetype)modelWithDictionary:(NSDictionary *)dict{
    return [[self alloc]initWithDictionary:dict];
}
-(instancetype)initWithDictionary:(NSDictionary *)dict{
    if (self = [super init]) {
        _newsThumbnail = dict[SSthumbnail];
        _title = dict[SStitle];
        _source = dict[SSsource];
        
        //转化时间
        NSString *timeString = dict[SSupdateTime];
        if (timeString) {
            NSDate *date = [NSDate dateWithSSString:timeString];
            _updateTime = [self dateStringFormDate:date];
        }
        _newsId = dict[SSNewsid];
        _commentsall = dict[SScommentsall];
        _type       =  dict[SStype];
        
        _slideStyle = dict[SSslideStyle];
        if (_slideStyle) {
            _slideImages = _slideStyle[SSslideImages];
        }
        _hotLink = dict[SSLink][@"url"];
        _hotName = dict[SSrecommendChannel][@"name"];
    }
    return self;
}
-(NSString *)dateStringFormDate:(NSDate *)date{
    NSTimeInterval interval = -[date timeIntervalSinceNow];
    if (interval < 60 * 30){//分级
        return [NSString stringWithFormat:@"%d分钟前",(int)(interval / 60)];
    }else if (interval < 60 * 60 * 24 ){//一天内
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"HH:mm"];
        return [formatter stringFromDate:date];
    }else if (interval < 60 * 60 * 24 * 30 && interval >= 60 * 60 * 24 ){//天级
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"MM-dd"];
        return [formatter stringFromDate:date];
    }
    return nil;
}

@end












