//
//  PageViewContentController.h
//  GogoProject
//
//  Created by SDT-1 on 2014. 1. 23..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageViewContentController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *Image5;



@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;
@end
