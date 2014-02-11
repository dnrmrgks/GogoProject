//
//  ShakingModeViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 4..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ShakingModeViewController.h"
#import "Model.h"
#import "BunningViewController.h"
@interface ShakingModeViewController (){
   NSInteger i;
    NSInteger k;
    
    
    __weak IBOutlet UIButton *Bunningbutton;
    UIButton *sampleButton;
    UIImage *bunning;
}
@property (weak, nonatomic) IBOutlet UILabel *Point;
@property (weak, nonatomic) IBOutlet UILabel *successLabel;

@property (weak, nonatomic) IBOutlet UILabel *failLabel;

@end

@implementation ShakingModeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;

}

- (IBAction)bun:(id)sender {
    
    [self performSegueWithIdentifier:@"gotobun" sender:self];
}
- (IBAction)backto:(id)sender {
    [self dismissViewControllerAnimated:self completion:^{
        
    }];
}




-(void)count{
    
    i=i+1;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:i forKey:@"count"];

   
}

-(void)test{
    
   
    
    
   
    self.Point.text = [NSString stringWithFormat:@"%ld",(long)i];
    if(Bunningbutton.hidden==NO){
        
        self.Point.hidden=YES;
        /*for (UIView *subview in self.view.subviews) {
            if ([subview isKindOfClass:[UILabel class]]) {
                subview.hidden = YES;
            }
        }*/
                /*UIImage *bunning = [UIImage imageNamed:@"엠블럼.png"];
        UIImageView *imageView1 = [[UIImageView alloc]initWithImage:bunning];
        imageView1.frame=CGRectMake(160, 250, 100, 100);
         */
           /*    sampleButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [sampleButton setTitle:@"버닝" forState:UIControlStateNormal];
      
        [sampleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        sampleButton.frame=CGRectMake(160, 300, 50, 50);*/
        //[self.view addSubview:imageView1];

        
    }
    else {
        self.Point.hidden=NO;
        
    }
}


-(void)timer3{
    
    self->Bunningbutton.hidden=NO;}



- (void)viewDidLoad
{
    [super viewDidLoad];
   
 
    
    [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(timer3) userInfo:Nil repeats:YES];
  
    
    
    
        self.failLabel.hidden=YES;
        self.successLabel.hidden=YES;
    
  
 
    
    
    }	// Do any additional setup after loading the view.



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillAppear:(BOOL)animated{
    
    Bunningbutton.hidden=YES;
    self.Point.hidden=NO;
  
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    k=[defaults1 integerForKey:@"kcount"];
   
}









- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
    


}
- (BOOL)canBecomeFirstResponder {
    return YES;
}
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent*)event {
    
    
     if( event.subtype == UIEventSubtypeMotionShake )
        
    {
        [self count];
        [self test];
   
        NSLog(@"%d",i);
   }
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent*)event {
    NSLog(@"Shaking end");
    
    
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent*)event {
    NSLog(@"Shaking cancel");
}



@end
