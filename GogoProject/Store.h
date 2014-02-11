//
//  Store.h
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 5..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject

- (NSInteger)addTeamName:(NSString*)name;
- (NSString *)getNameOfTeamAtId:(NSInteger)index;
- (NSString *)getNameOfTeamAtIndex:(NSInteger)index;
+(id)sharedStore;
@end
