//
//  ViewController.m
//  字体设置
//
//  Created by 谢纪伟 on 16/5/5.
//  Copyright © 2016年 it.cast.cn. All rights reserved.
//
#import "AppDelegate.h"
#import "ViewController.h"
//#import "MYScrollViewController.h"
#import "MYLabel.h"
//#import "UILabel+FontChange.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property(nonatomic,strong) MYLabel * label2;
@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
#pragma mark ---设置失败。
//    _label.font = [UIFont fontWithName:@"Americana Dreams Upright" size:17.0f];
//    
//    _button.titleLabel.font = [UIFont fontWithName:@"Americana Dreams Upright.ttf" size:17.0f];
    
//    遍历字体族
    for (NSString * familyName in [UIFont familyNames]) {
//        字体族科
        NSLog(@"familyName = %@",familyName);
        for (NSString * fontName in [UIFont fontNamesForFamilyName:familyName]) {
//            族科下字体的样式
            NSLog(@"%@",fontName);
        }
    }//FZLiBian-S02S
//    _label.font = [UIFont fontWithName:@"Americana Dreams Upright" size:30.0f];
    
//    _button.titleLabel.font = [UIFont fontWithName:@"Americana Dreams Upright" size:30.0f];
    
    
    
    _label2 = [[MYLabel alloc]initWithFrame:CGRectMake(80,350,200, 30)];
    
    _label2.text=@"添加控件button";
    
    _label2.textColor = [UIColor redColor];
    
    _label2.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self.label2];
    UILabel * label3 = [[UILabel alloc]initWithFrame:CGRectMake(80,400,200, 30)];
    
    label3.text=@"添加控件label3";
    
    label3.textColor = [UIColor redColor];
    
    label3.backgroundColor = [UIColor lightGrayColor];
    
    label3.font = [UIFont fontWithName:@"Americana Dreams Upright" size:30.0f];
    
    [self.view addSubview:label3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
