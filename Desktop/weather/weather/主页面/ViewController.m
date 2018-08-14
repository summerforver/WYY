//
//  ViewController.m
//  weather
//
//  Created by 王一卓 on 2018/8/13.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "ViewController.h"
#import "HeadViewTableViewCell.h"
#import "SevenWeatherTableViewCell.h"
#import "FootTableViewCell.h"
#import "SearchViewController.h"
#import "WeatherView.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIImageView *backgroundView = [[UIImageView alloc] initWithFrame:self.view.bounds];
//    backgroundView.image = [UIImage imageNamed:@"28.JPG"];
//    [self.view addSubview:backgroundView];
    
    _cityMutableArray = [NSMutableArray arrayWithObjects:@"西安", @"北京", @"上海", nil];
    
    _scrollView = [[UIScrollView alloc] init];
    _scrollView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 40);
    _scrollView.backgroundColor = [UIColor colorWithRed:0.00f green:0.60f blue:0.80f alpha:1.00f];
    _scrollView.directionalLockEnabled = NO;
    _scrollView.indicatorStyle = UIScrollViewIndicatorStyleDefault;
    _scrollView.pagingEnabled = YES;
    _scrollView.bounces = YES;
    _scrollView.scrollEnabled = YES;
    
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.contentOffset = CGPointMake(0, 0);
    _scrollView.contentSize = CGSizeMake(375*_cityMutableArray.count, [UIScreen mainScreen].bounds.size.height - 40);
    _scrollView.bounces = YES;
    _scrollView.delegate = self;
    
    
    
//    [self.scrollView addSubview:backgroundView];
    
    UIView *footView = [[UIView alloc] initWithFrame:CGRectMake(0, 625, [UIScreen mainScreen].bounds.size.width, 45)];
    footView.backgroundColor = [UIColor colorWithRed:0.00f green:0.60f blue:0.80f alpha:1.00f];
    //    footView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:footView];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(330, 5, 40, 35)];
    [button setImage:[UIImage imageNamed:@"按钮"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchDown];
    [footView addSubview:button];
    
    _pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(140, 5, 100, 35)];
//    int count = 3;
    self.pageControl.numberOfPages = _cityMutableArray.count;
    self.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    self.pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.57f green:0.75f blue:0.88f alpha:1.00f];
    [_pageControl addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventValueChanged];
    
    [footView addSubview:_pageControl];
    
    
    
    
    for (int i = 0; i < _cityMutableArray.count; i++) {
        
        
        
        WeatherView *weather = [[WeatherView alloc] initWithFrame:CGRectMake(375*i, 0, [UIScreen mainScreen].bounds.size.width , _scrollView.frame.size.height) addCityName:_cityMutableArray[i]];
        
//         weather.cityName = _cityMutableArray[i];
        
        NSLog(@"%@", _cityMutableArray[i]);
        NSLog(@"qweqwe%ld-------", _cityMutableArray.count);
        
//        NSLog(@"%@", weather.cityName);
        
        [self.scrollView addSubview:weather];
        
    }
    [self.view addSubview:_scrollView];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(city:) name:@"city" object:nil];
    
}

- (void)clickAction:(UIPageControl *)page {
    _scrollView.contentOffset = CGPointMake(page.currentPage * self.scrollView.frame.size.width, 0);
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    if (scrollView == self.scrollView) {
        int page = scrollView.contentOffset.x / [UIScreen mainScreen].bounds.size.width;
        self.pageControl.currentPage = page;
    }
    
    
}

- (void)city:(NSNotification *)text {
    NSLog(@"-----%@",text.userInfo[@"city"]);
//    NSString *string = [NSString stringWithFormat:@"https://free-api.heweather.com/s6/weather?location=%@&key=6f50849b09364be0a651d52ee9473f54",text.userInfo[@"city"]];
    
   
    
    
    if (_cityMutableArray != nil && ![_cityMutableArray isKindOfClass:[NSNull class]] && _cityMutableArray.count != 0) {
        
        [_cityMutableArray addObject:text.userInfo[@"city"]];
        NSLog(@"-=-=-=-=-%@-=-=-=-=-", _cityMutableArray);
    }
    
    
    
    
}




- (void)clickButton:(UIButton *)sender {
    SearchViewController *viewControl = [[SearchViewController alloc] init];
    [self presentViewController:viewControl animated:YES completion:nil];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
