//
//  DemoTableView.m
//  Memo
//
//  Created by Wang on 2019/11/1.
//  Copyright © 2019 Wang. All rights reserved.
//

#import "DemoTableView.h"

@implementation DemoTableView


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
