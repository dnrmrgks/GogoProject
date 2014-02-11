//
//  MypageViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 3..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "MypageViewController.h"
#import "ProductCell.h"
#import "Product.h"
@interface MypageViewController ()

@end

@implementation MypageViewController


- (IBAction)abc:(id)sender
{
    [self dismissViewControllerAnimated:self completion:^{
        
    }];
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
