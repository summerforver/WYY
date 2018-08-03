//
//  WYYRootMy.m
//  WYY_账号
//
//  Created by 王一卓 on 2018/7/23.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "WYYRootMy.h"
#import "myMusicTableViewCell.h"

@interface WYYRootMy ()

@end

@implementation WYYRootMy

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self creatNavigationConLoad];
    [self creatTableView];
}

- (void)creatNavigationConLoad {
    self.title = @"我的音乐";

    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    //设置导航栏标题文字和颜色
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName ,[UIFont boldSystemFontOfSize:20.0 ],NSFontAttributeName,nil];
    
    //设置导航栏背景颜色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];

    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"音乐"] style:UIBarButtonItemStylePlain target:nil action:@selector(pressRight)];

    self.navigationItem.rightBarButtonItem = rightBtn;

    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"云"] style:UIBarButtonItemStylePlain target:nil action:@selector(pressLeft)];

    self.navigationItem.leftBarButtonItem = leftBtn;

}

- (void)creatTableView {
    
    UITableView *myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, 375, 600) style:UITableViewStyleGrouped];
    
    myTableView.delegate = self;
    myTableView.dataSource = self;
    
    NSArray *myArray01 = [NSArray arrayWithObjects:@"本地音乐",@"最近播放",@"我的电台",@"我的收藏",nil];
    NSArray *myArray02 = [NSArray arrayWithObjects:@"我喜欢的音乐",@"Kelly ClarkSon",@"Alan Walker",@"Adele",nil];

    _myMusicAll = [[NSMutableArray alloc]init];

    [_myMusicAll addObject:myArray01];
    [_myMusicAll addObject:myArray02];
//
//    //自动计算高度
//    myTableView.rowHeight = UITableViewAutomaticDimension;
    
    //自定义类需要这个方法
//    [myTableView registerClass:[myMusicTableViewCell class] forCellReuseIdentifier:@"myCell02"];
    
    [self.view addSubview:myTableView];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _myMusicAll.count;
//    return 3;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[_myMusicAll objectAtIndex:section] count];
//    if (section == 2) {
//        return 1;
//    } else  {
//        return 4;
//    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 50;
    } else {
        return 70;
    }
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return @" ";
    if (section == 1) {
        return @"我创建的歌单(4)";
    } else {
        return @" ";
    }
    
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @" ";
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 18;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    UITableViewCell *myTableCell1 = nil;
//    myTableCell1 = [tableView dequeueReusableCellWithIdentifier:@"myCell1"];
//
//    UITableViewCell *myTableCell2 = nil;
//    myTableCell2 = [tableView dequeueReusableCellWithIdentifier:@"myCell2"];
//
//    UITableViewCell *myTableCell3 = nil;
//    myTableCell3 = [tableView dequeueReusableCellWithIdentifier:@"myCell3"];
//
//    UITableViewCell *myTableCell4 = nil;
//    myTableCell4 = [tableView dequeueReusableCellWithIdentifier:@"myCell4"];
    UITableViewCell *myTableCell02 = nil;
    myTableCell02 = [tableView dequeueReusableCellWithIdentifier:@"myCell02"];
    
    UITableViewCell *myTableCell01 = nil;
    myTableCell01 = [tableView dequeueReusableCellWithIdentifier:@"myCell01"];
    
//    if (indexPath.section == 2) {
//
//        //不需要判断 cell 是否为nil这个步骤
//        myMusicTableViewCell *myTableCell02 = nil;
//        myTableCell02 = [tableView dequeueReusableCellWithIdentifier:@"myCell02" forIndexPath:indexPath];
//
//        myTableCell02.label1.text = @"nnn";
//        myTableCell02.label2.text = @"ccc";
//        myTableCell02.label2.text = @"fff";
//
//        return myTableCell02;
//
//    }
    
    
//    if (indexPath.section == 0 && indexPath.row == 0) {
//        if (myTableCell1 == nil) {
//            myTableCell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell1"];
//            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(330, 15, 30, 20)];
//
//            label1.text = @"0";
//            label1.textColor = [UIColor grayColor];
//
//            [myTableCell1.contentView addSubview:label1];
//        }
//        NSArray *myArray01 = [NSArray arrayWithObjects:@"本地音乐",@"最近播放",@"我的电台",@"我的收藏",nil];
//        myTableCell1.textLabel.text = myArray01[indexPath.row];
//        myTableCell1.imageView.image = [UIImage imageNamed:myArray01[indexPath.row]];
        
        
//        myTableCell1.textLabel.text = @"本地音乐";
//        myTableCell1.imageView.image = [UIImage imageNamed:@"本地音乐"];
//        myTableCell1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//
//        return myTableCell1;
//
//    } else if (indexPath.section == 0 && indexPath.row == 1) {
//        if (myTableCell2 == nil) {
//            myTableCell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell2"];
//
//            UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(330, 15, 30, 20)];
//
//            label2.text = @"0";
//            label2.textColor = [UIColor grayColor];
//
//            [myTableCell2.contentView addSubview:label2];
//        }
//        //        NSArray *myArray01 = [NSArray arrayWithObjects:@"本地音乐",@"最近播放",@"我的电台",@"我的收藏",nil];
//        //        myTableCell1.textLabel.text = myArray01[indexPath.row];
//        //        myTableCell1.imageView.image = [UIImage imageNamed:myArray01[indexPath.row]];
//
//        myTableCell2.textLabel.text = @"最近播放";
//        myTableCell2.imageView.image = [UIImage imageNamed:@"最近播放"];
//        myTableCell2.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//
//        return myTableCell2;
//    } else if (indexPath.section == 0 && indexPath.row == 2) {
//        if (myTableCell3 == nil) {
//            myTableCell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell3"];
//
//            UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(330, 15, 30, 20)];
//
//            label3.text = @"11";
//            label3.textColor = [UIColor grayColor];
//
//            [myTableCell3.contentView addSubview:label3];
//        }
//        //        NSArray *myArray01 = [NSArray arrayWithObjects:@"本地音乐",@"最近播放",@"我的电台",@"我的收藏",nil];
//        //        myTableCell1.textLabel.text = myArray01[indexPath.row];
//        //        myTableCell1.imageView.image = [UIImage imageNamed:myArray01[indexPath.row]];
//
//        myTableCell3.textLabel.text = @"我的电台";
//        myTableCell3.imageView.image = [UIImage imageNamed:@"我的电台"];
//        myTableCell3.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//
//        return myTableCell3;
//    } else if (indexPath.section == 0 && indexPath.row == 3) {
//        if (myTableCell4 == nil) {
//            myTableCell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell4"];
//
//            UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(330, 15, 30, 20)];
//
//            label4.text = @"0";
//            label4.textColor = [UIColor grayColor];
//
//            [myTableCell4.contentView addSubview:label4];
//        }
//        //        NSArray *myArray01 = [NSArray arrayWithObjects:@"本地音乐",@"最近播放",@"我的电台",@"我的收藏",nil];
//        //        myTableCell1.textLabel.text = myArray01[indexPath.row];
//        //        myTableCell1.imageView.image = [UIImage imageNamed:myArray01[indexPath.row]];
//
//        myTableCell4.textLabel.text = @"我的收藏";
//        myTableCell4.imageView.image = [UIImage imageNamed:@"我的收藏"];
//        myTableCell4.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//
//        return myTableCell4;
//    }
//
    if (indexPath.section == 0) {
        if (myTableCell02 == nil) {
            myTableCell02 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"myCell02"];
        }
        myTableCell02.textLabel.text = _myMusicAll[indexPath.section][indexPath.row];
        myTableCell02.imageView.image = [UIImage imageNamed:_myMusicAll[indexPath.section][indexPath.row]];
        
        NSArray *numberArray = [[NSArray alloc] initWithObjects:@"0", @"0", @"11", @"0", nil];
        myTableCell02.detailTextLabel.text = numberArray[indexPath.row];
        myTableCell02.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return myTableCell02;
        
        
    } else {
        if (myTableCell01 == nil) {
            myTableCell01 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"myCell01"];
        }
//        NSArray *myArray02 = [NSArray arrayWithObjects:@"我喜欢的音乐",@"Kelly ClarkSon",@"Alan Walker",@"Adele",nil];
        NSArray *myArray03 = [NSArray arrayWithObjects:@"我喜欢的音乐.jpg",@"Kelly ClarkSon.jpg",@"Alan Walker.jpg",@"Adele.jpg",nil];
        
        NSArray *detailArray = [NSArray arrayWithObjects:@"3首",@"5首",@"7首",@"4首",nil];
        
        myTableCell01.textLabel.text = _myMusicAll[indexPath.section][indexPath.row];
        myTableCell01.imageView.image = [UIImage imageNamed:myArray03[indexPath.row]];
        
        
//        myTableCell01.textLabel.text = myArray02[indexPath.row];
//        myTableCell01.imageView.image = [UIImage imageNamed:myArray03[indexPath.row]];
//        myTableCell01.imageView.frame = CGRectMake(0, 50, 375, 60);
        
        myTableCell01.detailTextLabel.text = detailArray[indexPath.row];
        myTableCell01.detailTextLabel.textColor = [UIColor grayColor];
        
        return myTableCell01;
    }
    

//    myTableCell.textLabel.text = _myMusicAll[indexPath.section][indexPath.row];
//
//    myTableCell.imageView.image = [UIImage imageNamed:_myMusicAll[indexPath.section][indexPath.row]];
    
}

- (void)pressRight {
    NSLog(@"右侧被按下");
}

- (void)pressLeft {
    NSLog(@"左侧被按下");
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
