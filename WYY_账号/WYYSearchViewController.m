//
//  WYYSearchViewController.m
//  WYY_账号
//
//  Created by 王一卓 on 2018/7/25.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "WYYSearchViewController.h"

@interface WYYSearchViewController ()

@end

@implementation WYYSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self navigationLoad];
    [self tableViewLoad];
}

- (void)navigationLoad {
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"我的"] style:UIBarButtonItemStylePlain target:nil action:@selector(pressLeft)];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"音乐"] style:UIBarButtonItemStylePlain target:nil action:@selector(pressRight)];
    
//    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 20, 200, 20)];
//
//    textField.borderStyle = UITextBorderStyleRoundedRect;
//    textField.placeholder = @"猜你喜欢";
    
    UISearchBar *searchbar = [[UISearchBar alloc] initWithFrame:CGRectMake(10, 20, 210, 18)];
    searchbar.placeholder = @"猜你喜欢";
    searchbar.barStyle = UISearchBarIconSearch;
    searchbar.backgroundColor = [UIColor clearColor];
    
    self.navigationItem.titleView = searchbar;
    
    self.navigationItem.leftBarButtonItem = leftButton;
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)tableViewLoad {
    UITableView *tabelView = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, 375, 600)];
    tabelView.delegate = self;
    tabelView.dataSource = self;
    
    [self.view addSubview:tabelView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 130;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    UITableViewCell *cellFirst = nil;
    cellFirst = [tableView dequeueReusableCellWithIdentifier:@"cell01"];
    if (indexPath.section == 0) {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            
            UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(5, 5, 365, 130)];
            
            scrollView.directionalLockEnabled = NO;
            
            scrollView.indicatorStyle = UIScrollViewIndicatorStyleDefault;
            
            scrollView.pagingEnabled = YES;
            
            scrollView.contentSize = CGSizeMake(365*8, 130);
            
            scrollView.bounces = YES;
            
            scrollView.scrollEnabled = YES;
            
//            scrollView.scrollsToTop = YES;
            
            scrollView.alwaysBounceHorizontal = YES;
            
            scrollView.alwaysBounceVertical = NO;
            
            scrollView.showsHorizontalScrollIndicator = YES;
            
            scrollView.showsVerticalScrollIndicator = NO;
            
            for (int i = 0 ; i < 8 ; i ++) {
                NSString *strName = [NSString stringWithFormat:@"%d.jpg",i+1];
                UIImage *image = [UIImage imageNamed:strName];
                UIImageView *iView = [[UIImageView alloc] initWithImage:image];
                iView.frame = CGRectMake(365*i, 5, 365, 130);
                [scrollView addSubview:iView];
                
            }
            
            [cell.contentView addSubview:scrollView];
            
        }
//        cell.textLabel.text = @"ahah";
        return cell;
    } else {
        if (cellFirst == nil) {
            cellFirst = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell01"];
        }
        cell.textLabel.text = @"zbzb";
        return cellFirst;
    }
    
}

- (void)pressLeft {
    NSLog(@"左侧按钮被按下");
}
- (void)pressRight {
    NSLog(@"右侧按钮被按下");
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
