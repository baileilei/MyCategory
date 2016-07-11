//
//  HMLevelView.m
//  HMZFBBusiness(口碑)
//
//  Created by baishangshang on 16/7/10.
//  Copyright © 2016年 geduo. All rights reserved.
//

#import "HMLevelView.h"

@implementation HMLevelView


-(void)awakeFromNib{
    
    CGFloat w = 14;
    CGFloat h = w;

    for (int i =0; i < 5; i ++) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"empty_star"]];
        
        imageView.frame = CGRectMake(i * w, 0, w, h);
        
        [self addSubview:imageView];
    }

}

-(void)setLevel:(CGFloat)level{
    _level = level;
    
    for (int i =0; i < 5; i ++) {
        UIImageView *imageView = self.subviews[i];
        
        imageView.image =[UIImage imageNamed:@"empty_star"];
    }
    
    NSInteger fullStar = (NSInteger)level;
    
    for (int i =0; i < fullStar; i ++) {
        UIImageView *imageView = self.subviews[i];
        
        imageView.image = [UIImage imageNamed:@"full_star"];
    }
    
    if (level - fullStar > 0) {
        UIImageView *imageView = self.subviews[fullStar];
        
        imageView.image = [UIImage imageNamed:@"half_star"];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
