//
//  ProductCell.h
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 6..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
@interface ProductCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *getgametime;
@property (weak, nonatomic) IBOutlet UILabel *getteamname1;
@property (weak, nonatomic) IBOutlet UILabel *getteamname2;
@property (weak, nonatomic) IBOutlet UIImageView *getimagename;

-(void)setProductInfo:(Product*)item;
@end
