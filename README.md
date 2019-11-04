# SegmentViewAdvanced
![效果动画]()
### 使用方法
```
// 创建一个TableView
@property (nonatomic,strong) DemoTableView *tableView;

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;

    // cell.titleArray 标题
    // cell.dataDic cell 数据
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
    return cell;
}

// ListTableViewCell 可以根据自己的需求自定义样式

// 在DetailTableViewCell可以设置标题的属性

// 创建头部标题View
- (PageSegmentView *)segmentView{

    if (!_segmentView) {
    self.segmentView = [[PageSegmentView alloc] initWithNameArray:@[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7"]];
    // 默认标题颜色
    _segmentView.defaultColor = [UIColor blueColor];
    // 选中标题颜色
    _segmentView.selectColor = [UIColor cyanColor];
    // 下划线颜色
    _segmentView.lineColor = [UIColor grayColor];
    // 背景颜色
    _segmentView.segmentViewColor = [UIColor orangeColor];
    // 默认标题字体大小
    _segmentView.defaultFont = [UIFont systemFontOfSize:16];
    // 选中标题字体大小
    _segmentView.selectFont = [UIFont systemFontOfSize:20];
    // 加载头部View中的控件
    [_segmentView setUIContents];
    // 设置头部View的大小
    _segmentView.frame = CGRectMake(0, 44, SCREEN_WIDTH, 64);
    _segmentView.delegate = self;
    }
 return _segmentView;
}
```

