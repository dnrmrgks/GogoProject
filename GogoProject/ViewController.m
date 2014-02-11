//
//  ViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 1. 23..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Firstlogo;

@end

@implementation ViewController{
    
    
}
-(void)timer{
    
    [self performSegueWithIdentifier:@"link" sender:self];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
   

 
    [UIView animateWithDuration:0.1
     delay:10.0 options:UIViewAnimationOptionCurveEaseIn animations:^{self.view.alpha = 0.0;}             // 애니메이션 투명도 0.0으로 만들기
                     completion:^(BOOL finished)  { [self.view removeFromSuperview ]; }];
    
    
    
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(timer) userInfo:nil repeats:NO];
    
    
  

    
};

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
