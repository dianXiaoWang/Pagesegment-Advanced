//
//  ViewController.m
//  Memo
//
//  Created by Wang on 2019/11/1.
//  Copyright © 2019 Wang. All rights reserved.
//
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#import "ViewController.h"
#import "DetailTableViewCell.h"
#import "DemoTableView.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) DemoTableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[DemoTableView alloc] initWithFrame:CGRectMake(0, 0,SCREEN_WIDTH,SCREEN_HEIGHT)];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableView.delegate =self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"DetailTableViewCell" bundle:nil] forCellReuseIdentifier:@"DetailTableViewCell"];
    [self.view addSubview:self.tableView];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.titleArray = @[@"1",@"2",@"3"];
        cell.dataDic = @{@"title":@"1",@"introduce":@"咿"};
    }
    if (indexPath.row == 1) {
        cell.titleArray = @[@"4",@"5",@"6"];
        cell.dataDic = @{@"title":@"2",@"introduce":@"吖"};
    }
    if (indexPath.row == 2) {
        cell.titleArray = @[@"7",@"8",@"9"];
        cell.dataDic = @{@"title":@"3",@"introduce":@"呦"};
    }
    [cell setUI];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 360;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}
@end
