//
//  ProductCell.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 6..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ProductCell.h"

@implementation ProductCell


-(void)setProductInfo:(Product*)item{
    
    self.getteamname1.text = item.teamname1;
    self.getteamname2.text = item.teamname2;
    self.getgametime.text = item.gametime;
    self.getimagename.image = [UIImage imageNamed:item.imagename];
}




- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
