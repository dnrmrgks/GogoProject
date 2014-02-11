//
//  Product.h
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 6..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property(strong,nonatomic)NSString*imagename;
@property(strong,nonatomic)NSString*gametime;
@property(strong,nonatomic)NSString*teamname1;
@property(strong,nonatomic)NSString*teamname2;

+(id)product1:(NSString*)teamname1 product2:(NSString*)teamname2 time:(NSString*)gametime image:(NSString*)imagename;
@end
