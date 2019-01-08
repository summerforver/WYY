//
//  firstViewController.m
//  text1
//
//  Created by 王一卓 on 2018/9/16.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "firstViewController.h"
#import "zizhuViewController.h"
#import "qusongViewController.h"
#import "fuliViewController.h"
#import "tiantianViewController.h"
#import "gengduoViewController.h"
#import "picture.h"


@interface firstViewController ()<UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate>

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"海尔洗衣";
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 60, 375, self.view.bounds.size.height - 110) style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 4) {
        return 6;
    } else {
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 200;
    } else if (indexPath.section == 1) {
        return 100;
    } else if (indexPath.section == 2) {
        return 100;
    } else if (indexPath.section == 3) {
        return 240;
    } else {
        return 70;
    }
}



- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return  @" ";
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @" ";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 2) {
        UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"cell3"];
        if (cell3 == nil) {
            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell3"];
        }
        cell3.textLabel.text = @"申请成为小管家";
        cell3.detailTextLabel.text= @"海狸小管家开始招募啦";
        cell3.imageView.image = [UIImage imageNamed:@"1.png"];
        return  cell3;
    } else if (indexPath.section == 4) {
        UITableViewCell *cell5 = [tableView dequeueReusableCellWithIdentifier:@"cell5"];
        if (cell5 == nil) {
            cell5 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell5"];
        }
        
        cell5.textLabel.text = @"西安邮电大学东区4号公寓";
        cell5.detailTextLabel.text = @"四台空闲";
        cell5.imageView.image = [UIImage imageNamed:@"7.png"];

        return cell5;
    } else if (indexPath.section == 1) {
        UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        if (cell2 == nil) {
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            
            UIButton *button1 = [[UIButton alloc] init];
            button1.frame = CGRectMake(10, 10, 60, 60);
            [button1 setImage:[UIImage imageNamed:@"1.jpeg"] forState:UIControlStateNormal];
            button1.layer.cornerRadius = 30;
            button1.layer.masksToBounds = YES;
            button1.selected = NO;
            [button1 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchDown];
            [cell2.contentView addSubview:button1];
            
    
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(15, 70, 60, 20)];
            label1.font = [UIFont systemFontOfSize:12.0];
            label1.text = @"自助洗衣";
            
            [cell2.contentView addSubview:label1];
            
            UIButton *button2 = [[UIButton alloc] init];
            button2.frame = CGRectMake(85, 10, 60, 60);
            [button2 setImage:[UIImage imageNamed:@"2.jpeg"] forState:UIControlStateNormal];
            button2.layer.cornerRadius = 30;
            button2.layer.masksToBounds = YES;
            button2.selected = NO;
            [button2 addTarget:self action:@selector(pressButton2:) forControlEvents:UIControlEventTouchDown];
            [cell2.contentView addSubview:button2];
            
            
            UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(90, 70, 60, 20)];
            label2.font = [UIFont systemFontOfSize:12.0];
            label2.text = @"取送洗衣";
            [cell2.contentView addSubview:label2];
            
           
            UIButton *button3 = [[UIButton alloc] init];
            button3.frame = CGRectMake(155, 10, 60, 60);
            [button3 setImage:[UIImage imageNamed:@"3.jpeg"] forState:UIControlStateNormal];
            button3.layer.cornerRadius = 30;
            button3.layer.masksToBounds = YES;
            button3.selected = NO;
            [button3 addTarget:self action:@selector(pressButton3:) forControlEvents:UIControlEventTouchDown];
            [cell2.contentView addSubview:button3];
            
            
            UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(170, 70, 60, 20)];
            label3.font = [UIFont systemFontOfSize:12.0];
            label3.text = @"福利社";
            [cell2.contentView addSubview:label3];
            
            UIButton *button4 = [[UIButton alloc] init];
            button4.frame = CGRectMake(225, 10, 60, 60);
            [button4 setImage:[UIImage imageNamed:@"1.jpeg"] forState:UIControlStateNormal];
            button4.layer.cornerRadius = 30;
            button4.layer.masksToBounds = YES;
            button4.selected = NO;
            [button4 addTarget:self action:@selector(pressButton4:) forControlEvents:UIControlEventTouchDown];
            [cell2.contentView addSubview:button4];
            
            
            UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(235, 70, 60, 20)];
            label4.font = [UIFont systemFontOfSize:12.0];
            label4.text = @"天天特价";
            [cell2.contentView addSubview:label4];
            
            UIButton *button5 = [[UIButton alloc] init];
            button5.frame = CGRectMake(300, 10, 60, 60);
            [button5 setImage:[UIImage imageNamed:@"2.jpeg"] forState:UIControlStateNormal];
            button5.layer.cornerRadius = 30;
            button5.layer.masksToBounds = YES;
            button5.selected = NO;
            [button5 addTarget:self action:@selector(pressButton5:) forControlEvents:UIControlEventTouchDown];
            [cell2.contentView addSubview:button5];
            
            
            UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(320, 70, 60, 20)];
            label5.font = [UIFont systemFontOfSize:12.0];
            label5.text = @"更多";
            [cell2.contentView addSubview:label5];
            
        }
        
        return cell2;
        
    } else if (indexPath.section == 0) {
        UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 200)];
//            self.scrollView.backgroundColor = [UIColor whiteColor];
            self.scrollView.directionalLockEnabled = NO;
            self.scrollView.indicatorStyle = UIScrollViewIndicatorStyleDefault;
            self.scrollView.pagingEnabled = YES;
            
            self.scrollView.contentSize = CGSizeMake(375*4, 180);
            self.scrollView.bounces = YES;
            self.scrollView.scrollEnabled = YES;
            self.scrollView.alwaysBounceHorizontal = YES;
            self.scrollView.alwaysBounceVertical = NO;
            self.scrollView.showsHorizontalScrollIndicator = NO;
            self.scrollView.showsVerticalScrollIndicator = NO;
            self.scrollView.delegate = self;
            for (int i = 0; i<4; i++) {
               
                NSString *strName = [NSString stringWithFormat:@"%d.jpeg",i+1];
                UIImage *image = [UIImage imageNamed:strName];
                UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
                imageView.frame = CGRectMake(375*i, 0, 375, 200);
                [self.scrollView addSubview:imageView];
            
            }
            
            [cell1.contentView addSubview:_scrollView];
            
            self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(260, 170, 70, 40)];
            self.pageControl.numberOfPages = 4;
            
            self.pageControl.currentPageIndicatorTintColor = [UIColor grayColor];
            self.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
            
            [cell1.contentView addSubview:_pageControl];
            
        }
        return  cell1;
    } else if (indexPath.section == 3) {
        UITableViewCell *cell4 = [tableView dequeueReusableCellWithIdentifier:@"cell4"];
        if (cell4 == nil) {
            cell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell4"];
            
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 70, 40)];
            label.text = @"特色推荐";
            label.font = [UIFont systemFontOfSize:16.0];
            [cell4.contentView addSubview:label];
            
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(330, 22, 25, 20)];
            label1.text = @"更多";
            label1.textColor = [UIColor grayColor];
            label1.font = [UIFont systemFontOfSize:12.0];
        
            [cell4.contentView addSubview:label1];
            
            self.scrollerView = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 50, 375, 180)];
            self.scrollerView.indicatorStyle = UIScrollViewIndicatorStyleDefault;
            self.scrollerView.pagingEnabled = YES;
            self.scrollerView.scrollEnabled = YES;
            self.scrollerView.showsHorizontalScrollIndicator = NO;
            self.scrollerView.bounces = YES;
            
            self.scrollerView.contentSize = CGSizeMake(165*3, 180);
            
            [cell4.contentView addSubview:self.scrollerView];
            
            for (int i = 0; i < 3; i ++) {
                
                picture *view = [[picture alloc] init];
                
                view.frame = CGRectMake(165*i, 0, 165, 180);
                if (i == 0) {
                    view.pictureImageView.image = [UIImage imageNamed:@"3.jpeg"];
                    view.textView.text = @"进入新生群，做好入学准备很重要";
                } else if (i == 1) {
                    view.pictureImageView.image = [UIImage imageNamed:@"2.jpeg"];
                    view.textView.text = @"今天的红包你领了吗！";
                } else {
                    view.pictureImageView.image = [UIImage imageNamed:@"1.jpeg"];
                    view.textView.text = @"专属洗衣礼包！你领了吗？";
                }
                
                
                [self.scrollerView addSubview:view];
                
            }
        }
        return  cell4;
        
    }
    UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
    if (cell1 == nil) {
        cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        
    }
    cell1.textLabel.text = @"123";
    return cell1;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    if (scrollView == self.scrollView) {
        int page = scrollView.contentOffset.x / [UIScreen mainScreen].bounds.size.width;
        self.pageControl.currentPage = page;
    }
    
    
}

- (void)pressButton1:(UIButton *)sender {
    zizhuViewController *zizhu = [[zizhuViewController alloc] init];
    [self.navigationController pushViewController:zizhu animated:YES];
}

- (void)pressButton2:(UIButton *)sender {
    qusongViewController *qusong = [[qusongViewController alloc] init];
    [self.navigationController pushViewController:qusong animated:YES];
}
- (void)pressButton3:(UIButton *)sender {
    fuliViewController *fuli = [[fuliViewController alloc] init];
    [self.navigationController pushViewController:fuli animated:YES];
}

- (void)pressButton4:(UIButton *)sender {
    tiantianViewController *tiantian = [[tiantianViewController alloc] init];
    [self.navigationController pushViewController:tiantian animated:YES];
}
- (void)pressButton5:(UIButton *)sender {
    gengduoViewController *gengduo = [[gengduoViewController alloc] init];
    [self.navigationController pushViewController:gengduo animated:YES];
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
