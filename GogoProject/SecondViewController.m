//
//  SecondViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 1. 23..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Image2;

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)timer2{
    
       [self performSegueWithIdentifier:@"link2" sender:self];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timer2) userInfo:nil repeats:NO];
    
    
    
	// Do any additional setup after loading the view.
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
    
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

/*

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent*)event {
    
    
   if(nil){
       return;
        
}
   else{
        
      
        
        NSLog(@"Shaking start");
    //[self timer2];
       [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timer2) userInfo:nil repeats:NO];
    
     //   }
}
}


- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent*)event {
    NSLog(@"Shaking end");
    
    
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent*)event {
    NSLog(@"Shaking cancel");
}

*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
