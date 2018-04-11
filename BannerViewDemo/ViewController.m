//
//  ViewController.m
//  BannerViewDemo
//
//  Created by 张小明 on 2018/4/11.
//  Copyright © 2018年 张小明. All rights reserved.
//

#import "ViewController.h"
#import "BannerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BannerView *ban=[[BannerView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    [self.view addSubview:ban];
    

    NSArray *arr=@[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523462443597&di=ab4124dccd5d0281cdde1745aaff9512&imgtype=0&src=http%3A%2F%2Fc.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F8b13632762d0f7031b053e1b0dfa513d2797c546.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523446573093&di=236af8963fccd9c69a4f80c96ae5ce5e&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F562c11dfa9ec8a13e017c3f2f103918fa0ecc097.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523446573089&di=81cc53d6e87d07fa2b44799705a3a36b&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fpic%2Fitem%2F77094b36acaf2eddeeff56448d1001e939019314.jpg%3Fv%3Dtbs",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1523446574423&di=5ace8bf5a8f50416934a8aa9fbe389a0&imgtype=0&src=http%3A%2F%2Fwww.17xfb.com%2FPublic%2FGame%2F20140911%2F20140911128211.png"];
    
    ban.backgroundColor=[UIColor redColor];
    
    [ban initData:arr block:^(NSInteger index) {
        NSLog(@"点击了第%lu页",index);
    }];
    [ban openAuto];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
