//
//  ScreenViewController.h
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 11..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScreenViewController : UIViewController<UITextFieldDelegate>
@property(strong,nonatomic)NSString *msg;
@property (weak, nonatomic) IBOutlet UILabel *getLabel;

@end
