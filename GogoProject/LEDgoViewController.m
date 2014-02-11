//
//  LEDgoViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 11..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "LEDgoViewController.h"
#import "LEDViewController.h"
#import "ScreenViewController.h"
@interface LEDgoViewController ()
{
    
   

    
   
}

@property (weak, nonatomic) IBOutlet UIButton *red;


@end



@implementation LEDgoViewController

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if(self.red.selected){
        
       
       
        
    }

}

- (IBAction)red:(id)sender {
}





-(void)viewDidAppear:(BOOL)animated{
   
}









- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
