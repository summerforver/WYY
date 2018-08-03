//
//  WYYRoot.m
//  WYY_账号
//
//  Created by 王一卓 on 2018/7/22.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "WYYRoot.h"

@interface WYYRoot ()

@end

@implementation WYYRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self navigationConLoad];
    [self tableViewLoad];
    
}

- (void)navigationConLoad {
    self.title = @"账号";
    //右侧文字颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    //导航栏标题文字颜色和大小
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont boldSystemFontOfSize:20.0],NSFontAttributeName,nil];
    
    
    //导航栏背景颜色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"音乐"] style:UIBarButtonItemStylePlain target:nil action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}

- (void)tableViewLoad {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, 375, 600) style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate = self;
    
    NSArray *array01 = [NSArray arrayWithObjects:@"",nil];
    NSArray *array02 = [NSArray arrayWithObjects:@"我的消息", nil];
    NSArray *array03 = [NSArray arrayWithObjects:@"会员中心",@"",@"游戏推荐Beta",@"在线听歌免流量", nil];
    NSArray *array04 = [NSArray arrayWithObjects:@"设置",@"扫一扫",@"", @"",@"定时关闭",@"音乐闹钟",@"驾驭模式",@"优惠劵",nil];
    NSArray *array05 = [NSArray arrayWithObjects:@"分享网易云音乐",@"关于",nil];
    NSArray *array06 = [NSArray arrayWithObjects:@"", nil];
    
    _all = [[NSMutableArray alloc]init];
//
    [_all addObject:array01];
    [_all addObject:array02];
    [_all addObject:array03];
    [_all addObject:array04];
    [_all addObject:array05];
    [_all addObject:array06];

//    tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.view addSubview:tableView];
    
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return _all.count;
    return 6;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 2) {
        return 4;
    } else if (section == 3) {
        return 8;
    } else if (section == 4) {
        return 2;
    } else {
        return 1;
    }
//    NSInteger row = [[_all objectAtIndex:section]count];
//    return row;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @" ";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @" ";
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 100;
    } else {
        return 50;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        
        UITableViewCell *cell01 = [tableView dequeueReusableCellWithIdentifier:@"cell01"];
        
        if (cell01 == nil) {
            cell01 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell01"];
            
            UIButton *button = [[UIButton alloc]init];
            button.backgroundColor = [UIColor whiteColor];
            
            //边框宽度
            button.layer.borderWidth = 1;
            //设置边框背景颜色
            button.layer.borderColor = [UIColor grayColor].CGColor;
            
            button.frame = CGRectMake(300, 35, 70, 30);
            
            //圆角
            button.layer.cornerRadius = 13;
            button.layer.masksToBounds = YES;
            button.selected = NO;
            
            [button setTitle:@" 签到" forState:UIControlStateNormal];
//            [button setTitle:@" 签到" forState:UIControlStateDisabled];
            
            //button 字体颜色和字体大小
            button.titleLabel.font = [UIFont systemFontOfSize:14.0];
            button.titleLabel.textColor = [UIColor redColor];
            
            
            [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
            
            [button setTitle:@"已签到" forState:UIControlStateSelected];
            
//            button.showsTouchWhenHighlighted = YES;
            [button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
            
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            
            [button setImage:[UIImage imageNamed:@"金币"] forState:UIControlStateNormal];
//            [button setImage:nil forState:UIControlStateSelected];
            
            [cell01.contentView addSubview: button];
            
            UIButton *buttonFirst = [[UIButton alloc]initWithFrame:CGRectMake(110, 65, 35, 17)];
            
             [buttonFirst setTitle:@"lv.2" forState:UIControlStateNormal];
            
            [buttonFirst setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            
//            [buttonFirst setTitle:@"lv2" forState:UIControlStateNormal];
            
            //边框宽度
            buttonFirst.layer.borderWidth = 1;
            
            //设置边框背景颜色
            buttonFirst.layer.borderColor = [UIColor grayColor].CGColor;
            
            buttonFirst.titleLabel.font = [UIFont systemFontOfSize:12.0];
//            buttonFirst.titleLabel.textColor =[UIColor grayColor];
            
            buttonFirst.layer.cornerRadius = 8;
            buttonFirst.layer.masksToBounds = YES;
            
            
            [cell01.contentView addSubview:buttonFirst];
            
        }
        cell01.textLabel.text = @"summerforver";
//        cell01.textLabel.frame = CGRectMake(110, 60, 100, 17);
        cell01.imageView.image = [UIImage imageNamed:@"summerforver.jpg"];
        //lv2是个UIButton
        cell01.detailTextLabel.text = @"lv.2";
        
//        UIButton *buttonFirst = [[UIButton alloc]initWithFrame:CGRectMake(100, 40, 30, 15)];
//
//        [buttonFirst setTitle:@"lv2" forState:UIControlStateNormal];
//
//        buttonFirst.titleLabel.font = [UIFont systemFontOfSize:12.0];
//        buttonFirst.titleLabel.textColor =[UIColor grayColor];
//
//        buttonFirst.layer.cornerRadius = 13;
//        buttonFirst.layer.masksToBounds = YES;
//
//
//        [cell01.detailTextLabel addSubview:buttonFirst];
//        cell01.detailTextLabel addSubview:
        
        return cell01;
    } else if (indexPath.section == 2 && indexPath.row == 1) {
        UITableViewCell *cell02 = [tableView dequeueReusableCellWithIdentifier:@"cell02"];
        if (cell02 == nil) {
            cell02 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell02"];
            
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(240, 15, 200, 20)];
            
            label.text = @"日式眼罩9元秒杀";
            
            label.font = [UIFont systemFontOfSize:14.0];
            
            label.textColor = [UIColor grayColor];
            
            label.backgroundColor = [UIColor whiteColor];
            
            [cell02.contentView addSubview:label];
        }
        cell02.textLabel.text = @"商城";
        cell02.imageView.image = [UIImage imageNamed:@"商城"];
        //加右箭头
        cell02.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell02;
        
    } else if (indexPath.section == 3 && indexPath.row == 2) {
        UITableViewCell *cell03 = [tableView dequeueReusableCellWithIdentifier:@"cell03"];
        
        
        if (cell03 == nil) {
            cell03 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell03"];
            
            UILabel *label03 = [[UILabel alloc] initWithFrame:CGRectMake(305, 15, 200, 20)];
            
            label03.text = @"官方红";
            
            label03.textColor = [UIColor grayColor];
            label03.font = [UIFont systemFontOfSize:14.0];
            
            label03.backgroundColor = [UIColor whiteColor];
            
            [cell03.contentView addSubview:label03];
        }
        cell03.textLabel.text = @"个性换肤";
        cell03.imageView.image = [UIImage imageNamed:@"个性皮肤"];
        cell03.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell03;
        
    } else if (indexPath.section == 3 && indexPath.row == 3) {
        
        UITableViewCell *cell04 = [tableView dequeueReusableCellWithIdentifier:@"cell04"];
        
        if (cell04 == nil) {
            cell04 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell04"];
            UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(310, 10, 70, 30)];
            
            //将开关控件加到单元格上
            cell04.accessoryView = sw;
//            [cell04.contentView addSubview:sw];
        }
        
        cell04.textLabel.text = @"夜间模式";
        cell04.imageView.image = [UIImage imageNamed:@"夜间模式"];
        
        return cell04;
        
    } else if (indexPath.section == 5) {
        UITableViewCell *cell05 = [tableView dequeueReusableCellWithIdentifier:@"cell05"];

        if (cell05 == nil) {
            cell05 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell05"];
        }
        cell05.textLabel.text = @"退出登录";
        cell05.textLabel.textColor = [UIColor redColor];
        cell05.textLabel.textAlignment = NSTextAlignmentCenter;
        return cell05;
    } else {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.textLabel.text = _all[indexPath.section][indexPath.row];
        cell.imageView.image = [UIImage imageNamed:_all[indexPath.section][indexPath.row]];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        //
        //    WYYTableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        
        return cell;
    }
    
}

- (void)pressButton:(UIButton *)button {
    button.selected = !button.selected;
    
    if (!button.selected) {
//        button.selected = NO;
        
        [button setImage:[UIImage imageNamed:@"金币"] forState:UIControlStateNormal];
        
    } else {

        [button setImage:nil forState:UIControlStateNormal];
//        button.selected = YES;
    }

}

- (void)pressRight {
    NSLog(@"右侧被按下");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
