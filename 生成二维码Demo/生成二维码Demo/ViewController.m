//
//  ViewController.m
//  生成二维码Demo
//
//  Created by LZXuan on 15-1-23.
//  Copyright (c) 2015年 LZXuan. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeGenerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(id)sender {
    //1.生产二维码 导入库 libqrencode
    //2.导入头文件#import "QRCodeGenerator.h"
    //3.把一个文本字符串转化为 二维码图片
    
    /**
     *  第一个参数 要转化为二维码的字符串
           2      生产二维码的尺寸大小
     */
    //转为 二维码的图片
   UIImage *image = [QRCodeGenerator qrImageForString:self.textField.text imageSize:300];
    self.imageView.image = image;
    
    //保存到相册 后面三个参数 可以什么都不写
    
    //UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    //第一个参数是UIImage 对象
    //第二个参数是 任意对象地址
    //第三个参数是 保存之后 会让 第二个参数调用 第三个参数对应的方法
    
    UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
}
//保存图片之后 会调用   结果
- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    
    if (error) {
        NSLog(@"保存失败%@",error);
    }else{
        NSLog(@"保存成功");
    }
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}
@end
