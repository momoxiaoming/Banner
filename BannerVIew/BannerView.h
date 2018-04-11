//
//  BannerView.h
//  LotteProject
//
//  Created by 张小明 on 2018/4/11.
//  Copyright © 2018年 张小明. All rights reserved.
//  广告轮播

#import <UIKit/UIKit.h>

typedef void(^bannerResult)(NSInteger index);

@interface BannerView : UIView



-(void)initData:(NSArray *)arr block:(bannerResult) block;
-(void)openAuto;
-(void)closeAuto;



@end
