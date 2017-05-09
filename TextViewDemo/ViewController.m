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
#define testUrl @"http://world.huanqiu.com/article/2016-11/9704863.html?from=bdwz"
@interface ViewController ()<NSURLSessionDelegate>
{
//    NSString *_name;
}
@property(nonatomic,copy)NSString *name;
@end

@implementation ViewController
@synthesize name = _theName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _theName = @"12314";
//    _name = @"mnabdnmabd";
    
    NSLog(@"===%@===%@",self.name,_theName);
    
    /**
     *  AF的前导篇
     */
    /*
    NSURLSession *mySession = [NSURLSession sharedSession];
    NSURLSessionDataTask *taska = [mySession dataTaskWithURL:[NSURL URLWithString:testUrl] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
             //解析服务器返回的数据
        NSLog(@"%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
        //默认在子线程中解析数据
        NSLog(@"%@", [NSThread currentThread]);
        
    } ];
    
    [taska resume];
    */
    
    //确定请求路径
    NSURL *url = [NSURL URLWithString:@"http://120.25.226.186:32812/login"];
    //创建可变请求对象
    NSMutableURLRequest *requestM = [NSMutableURLRequest requestWithURL:url];
    //修改请求方法
    requestM.HTTPMethod = @"POST";
    //设置请求体
    requestM.HTTPBody = [@"username=520&pwd=520&type=JSON" dataUsingEncoding:NSUTF8StringEncoding];
    //创建会话对象
    NSURLSession *session = [NSURLSession sharedSession];
    //创建请求 Task
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:requestM completionHandler:              ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {      //解析返回的数据
        NSLog(@"%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
    }];
//    session.delegate = self;
    //发送请求
    [dataTask resume];
    
//    NSURLSessionDataTask *task2 = [mySession dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@""]] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        
//    }];
//    
//    NSURLSessionDataTask *task3 = [mySession dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@""] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:0.3] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        
//    }];
    
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
    
    
    //******************
    /**
     *  UIButton
     *
     *  @return
     */
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    
    
    /**
     *  <#Description#>
     *
     *  @return <#return value description#>
     */
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    //2.创建dispatch_semaphore_t对象
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(1);
         NSMutableArray *mArray = [NSMutableArray array];
         //当执行次数过大时,异常结束的概率很高
        for (int i = 0; i < 10000; i++) {
        
                dispatch_async(queue, ^{
            
                    //数据进入,等待处理,信号量减1
                                 dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
                                 //处理数据
                                 [mArray addObject:[NSNumber numberWithInt:i]];
                                 //数据处理完毕,信号量加1,等待下一次处理
                                 dispatch_semaphore_signal(semaphore);
                     });
             }
         NSLog(@"%@", mArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
