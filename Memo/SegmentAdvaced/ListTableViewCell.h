//
//  ListTableViewCell.h
//  Memo
//
//  Created by Wang on 2019/11/1.
//  Copyright © 2019 Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *introduceLabel;

@end

NS_ASSUME_NONNULL_END
