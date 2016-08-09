//
//  ViewController.m
//  转场动画
//
//  Created by niuwan on 16/8/8.
//  Copyright © 2016年 niuwan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

static int i = 2;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //转场代码
    if (i >= 4 ) {
        i = 1;
    }
    
    //加载图片
    NSString *imageN = [NSString stringWithFormat:@"%zd", i];
    _imageView.image = [UIImage imageNamed:imageN];
    
    i++;
    
    //转场动画
    CATransition *anim = [CATransition animation];
    
    //动画类型
    anim.type = @"suckEffect";
    /**
     fade;  交叉渐变效果
     push;  新视图把旧视图推出去
     moveIn;   新视图移到旧视图上面
     reveal;   将旧视图移开，显示下面的新视图
     cube;   立方体翻转效果
     oglFli;  上下左右翻转效果
     suckEffect;  收缩效果，如一块布被抽走 往父视图上抽
     rippleEffect; 水滴效果
     pageCurl;  向上翻页效果
     pageUnCurl;  向下翻页效果
     cameraIrisHollowOpen;  相机镜头打开效果
     cameraIrisHollowClose; 相机镜头关闭效果
     */
    
    anim.duration = 2.0;
    
    //添加动画
    [_imageView.layer addAnimation:anim forKey:nil];
    
    
}

@end
