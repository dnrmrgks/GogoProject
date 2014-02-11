//
//  BaseballViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 1. 28..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "BaseballViewController.h"
#define CELL_ID @"CELL_ID"
@interface BaseballViewController ()<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>

@end

@implementation BaseballViewController

- (IBAction)BaseballMy:(id)sender {
    
    
    [self performSegueWithIdentifier:@"BaseballMy" sender:self];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"팀을선택하세요" message:nil delegate:self cancelButtonTitle:@"청팀" otherButtonTitles:@"백팀", nil];
    [alert show];
    
    
}

-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if(alertView.firstOtherButtonIndex==buttonIndex){
        [self performSegueWithIdentifier:@"log2" sender:self];
  
    }
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL_ID"];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
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
