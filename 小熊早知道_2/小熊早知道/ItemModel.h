//
//  ItemModel.h
//  news_APP
//
//  Created by qingyun on 16/5/27.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemModel : NSObject

@property (nonatomic ,strong) NSString *newsThumbnail;      //缩略图
@property (nonatomic ,strong) NSString *title;              //新闻标题
@property (nonatomic ,strong) NSString *source;             //数据来源
@property (nonatomic ,strong) NSString *updateTime;         //更新时间
@property (nonatomic ,strong) NSString *newsId;             //新闻页面链接地址
@property (nonatomic ,strong) NSString *commentsall;        //总评论数
@property (nonatomic ,strong) NSString *type;               //新闻类型（文本，图片）
@property (nonatomic ,strong) NSDictionary *slideStyle;   //在hasSlide下才有{type类型,images[三个图片地址]}
@property (nonatomic ,strong) NSArray *slideImages;       //图片地址集合
@property (nonatomic ,strong) NSString *hotLink;           //hot页面数据连接
@property (nonatomic ,strong) NSString *hotName;           //hotCell推荐频道recommendChannel

+(instancetype)modelWithDictionary:(NSDictionary *)dict;
-(instancetype)initWithDictionary:(NSDictionary *)dict;

@end







