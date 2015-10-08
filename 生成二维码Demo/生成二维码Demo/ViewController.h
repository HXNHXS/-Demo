//
//  ViewController.h
//  生成二维码Demo
//
//  Created by LZXuan on 15-1-23.
//  Copyright (c) 2015年 LZXuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)btnClick:(id)sender;

@end

