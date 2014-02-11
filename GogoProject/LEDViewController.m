//
//  LEDViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 1. 29..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "LEDViewController.h"
#import "AllViewController.h"
@interface LEDViewController ()<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *back;

@end

@implementation LEDViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)Mybutton1:(id)sender {
    [self performSegueWithIdentifier:@"My1" sender:self];
    
    
}
- (IBAction)Mybutton2:(id)sender {
    [self performSegueWithIdentifier:@"gotoled" sender:self];
}
- (IBAction)back:(id)sender {
    
    UIAlertView *alert2 = [[UIAlertView alloc]initWithTitle:@"back" message:nil delegate:self cancelButtonTitle:@"다른팀선택하기" otherButtonTitles:@"응원계속하기", nil];
    [alert2 show];
    
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(alertView.cancelButtonIndex==buttonIndex){
        [self dismissViewControllerAnimated:self completion:^{
            
        }];
        
    }
    
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
