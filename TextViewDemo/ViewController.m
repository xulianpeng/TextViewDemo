//
//  ViewController.m
//  TextViewDemo
//
//  Created by xulianpeng on 16/8/4.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+placeholder.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor magentaColor];
    
    UITextView *aTextView_33 = [[UITextView alloc]init];
    aTextView_33.font = [UIFont systemFontOfSize:58];
    [self.view addSubview:aTextView_33];
    [aTextView_33 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(10);
        make.top.mas_equalTo(self.view).offset(70);
        make.right.mas_equalTo(-10);
        make.height.mas_equalTo(100);
        
    }];
    aTextView_33.xlp_placeholderFont = [UIFont systemFontOfSize:16];
    aTextView_33.xlp_placeholderPosition = @"middle";
    aTextView_33.xlp_placeholderColor = [UIColor redColor];
    aTextView_33.xlp_placeholder = @"请输入简介33";
    
    //************
    UITextView *aTextView_44 = [[UITextView alloc]init];
    aTextView_44.font = [UIFont systemFontOfSize:46];
    [self.view addSubview:aTextView_44];
    [aTextView_44 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(10);
        make.top.mas_equalTo(self.view).offset(200);
        make.right.mas_equalTo(-10);
        make.height.mas_equalTo(100);
        
    }];
    aTextView_44.xlp_placeholderFont = [UIFont systemFontOfSize:6];
    aTextView_44.text = @"44就分手的sdfsdfsdfsdf";
    aTextView_44.xlp_placeholderPosition = @"bottom";
    aTextView_44.xlp_placeholder = @"请输入简介44";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
