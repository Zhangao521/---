//
//  SlidesTableViewCell.h
//  news_APP
//
//  Created by qingyun on 16/6/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemModel.h"
@interface ThreeNewTableViewCell : UITableViewCell

@property (nonatomic ,strong)ItemModel *model;          //利用setmodel方法设置cell各个属性

@end
