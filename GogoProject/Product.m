//
//  Product.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 6..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "Product.h"

@implementation Product
+(id)product1:(NSString*)teamname1 product2:(NSString*)teamname2 time:(NSString*)gametime image:(NSString*)imagename{
    
    Product *item =[[Product alloc]init];
    item.teamname1 =teamname1;
    item.teamname2 = teamname2;
    item.imagename = imagename;
    item.gametime =gametime;
    return item;
    
}



@end
