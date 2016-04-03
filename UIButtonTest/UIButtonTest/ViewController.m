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
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)moveAction:(UIButton *)sender {
    CGAffineTransform trans=self.myImageView.transform;
    switch (sender.tag) {
        case 1:
            self.myImageView.transform=CGAffineTransformTranslate(trans, 0, -20);
            break;
        case 2:
            self.myImageView.transform=CGAffineTransformTranslate(trans, 0, +20);
            break;
        case 3:
            self.myImageView.transform=CGAffineTransformTranslate(trans, -20, 0);
            break;
        case 4:
            self.myImageView.transform=CGAffineTransformTranslate(trans, +20, 0);
            break;
        default:
            break;
    }
}
- (IBAction)scalingAction:(UIButton *)sender {
//    switch (sender.tag) {
//        case 1:
//            self.myImageView.transform=CGAffineTransformScale(self.myImageView.transform, 1.1, 1.1);
//            break;
//        case 2:
//            self.myImageView.transform=CGAffineTransformScale(self.myImageView.transform, 0.9, 0.9);
//            break;
//        default:
//            break;
//    }
    CGFloat scale=(sender.tag==1)?1.1:0.9;
    self.myImageView.transform=CGAffineTransformScale(self.myImageView.transform, scale, scale);
}

@end
