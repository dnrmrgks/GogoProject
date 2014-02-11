//
//  BunningViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 4..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "BunningViewController.h"
#import "ShakingModeViewController.h"
#import "Model.h"
@interface BunningViewController (){
   NSInteger i;
    NSInteger k;
    
    
}
@property (weak, nonatomic) IBOutlet UIImageView *bunningimage;
@property (weak, nonatomic) IBOutlet UILabel *ddd;
@property (weak, nonatomic) IBOutlet UIButton *failbutton;
@property (weak, nonatomic) IBOutlet UIButton *successbutton;

@end

@implementation BunningViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

  

- (IBAction)failbutton:(id)sender {
    
    
     [self dismissViewControllerAnimated:self completion:^{}];}


-(void)fail{
    self.failbutton.hidden=NO;
    
}
- (IBAction)successbutton:(id)sender {
    
        [self dismissViewControllerAnimated:self completion:^{}];
    
}

-(void)success{
    self.successbutton.hidden=NO;
    
    
}
-(void)count2{
    
    k=k+1;
    NSUserDefaults *defaults1=[NSUserDefaults standardUserDefaults];
    [defaults1 setInteger:k forKey:@"kcount"];
 
}


-(void)count3{
    
    if(k <90 ){
        
        [self fail];
    }
    if(k>90){
        
        [self success];
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    i=[defaults integerForKey:@"count"];
    
    
    
  //  self.ddd.text=[NSString stringWithFormat:@"%ld",(long)i];
    
	// Do any additional setup after loading the view.
         [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(count3) userInfo:nil repeats:NO];
    
    

        
        
    

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
-(void)viewWillAppear:(BOOL)animated{
     [NSTimer timerWithTimeInterval:10 target:self selector:@selector(count3) userInfo:nil repeats:NO];
}*/
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}
-(BOOL)canBecomeFirstResponder{
    return YES;
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    
    if(event.subtype == UIEventSubtypeMotionShake)
    {
        
        [self count2];
        NSLog(@"%ld",k);
    }
}
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    
}
-(void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    
}

@end
