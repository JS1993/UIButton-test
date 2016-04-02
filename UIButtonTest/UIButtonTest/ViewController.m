//
//  ViewController.m
//  UIButtonTest
//
//  Created by  江苏 on 16/4/2.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property(nonatomic)int x;
@property(nonatomic)int y;
@property(nonatomic)CGPoint* centerPoint;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化点击按钮图片的x,y的移动值和放大值
    self.x=10;
    self.y=10;
}
- (IBAction)moveUP:(UIButton *)sender {
    self.myImageView.center=CGPointMake(self.myImageView.center.x, self.myImageView.center.y-self.y);
}
- (IBAction)moveDown:(UIButton *)sender {
    self.myImageView.center=CGPointMake(self.myImageView.center.x, self.myImageView.center.y+self.y);
}
- (IBAction)moveRight:(UIButton *)sender {
    self.myImageView.center=CGPointMake(self.myImageView.center.x+self.x, self.myImageView.center.y);
}
- (IBAction)moveLeft:(id)sender {
    self.myImageView.center=CGPointMake(self.myImageView.center.x-self.x, self.myImageView.center.y);
}
- (IBAction)imageViewEnlarge:(UIButton *)sender {
    self.myImageView.bounds=CGRectMake(0, 0, self.myImageView.bounds.size.width+10, self.myImageView.bounds.size.height+10);
}
- (IBAction)imageViewShrink:(UIButton *)sender {
    self.myImageView.bounds=CGRectMake(0, 0, self.myImageView.bounds.size.width-10, self.myImageView.bounds.size.height-10);
}

@end
