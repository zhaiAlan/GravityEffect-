//
//  ViewController.m
//  重力效果差
//
//  Created by Alan on 2019/3/28.
//  Copyright © 2019 zhaixingzhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView*imageView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    imageView=[[UIImageView alloc]initWithFrame:self.view.frame];
    imageView.image=[UIImage imageNamed:@"0.jpg"];
    [self.view addSubview:imageView];
    
    //设置偏移
    
    UIInterpolatingMotionEffect*effectX;
    UIInterpolatingMotionEffect*effectY;
    effectX=[[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    effectY=[[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    
    //设置最大值和最小值
    effectX.maximumRelativeValue=@(100);
    effectX.minimumRelativeValue=@(-100);
    effectY.maximumRelativeValue=@(100);
    effectY.minimumRelativeValue=@(-100);
    [imageView addMotionEffect:effectX];
    [imageView addMotionEffect:effectY];
    

    // Do any additional setup after loading the view.
}


@end
