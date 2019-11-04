//
//  DetailTableViewCell.h
//  Memo
//
//  Created by Wang on 2019/11/1.
//  Copyright © 2019 Wang. All rights reserved.
//
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface DetailTableViewCell : UITableViewCell 

@property (nonatomic,strong) NSArray *titleArray;
@property (nonatomic,strong) NSDictionary *dataDic;
-(void)setUI;
@end

NS_ASSUME_NONNULL_END
