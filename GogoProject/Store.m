//
//  Store.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 2. 5..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "Store.h"
#import <sqlite3.h>
@implementation Store
{
    sqlite3 *point;
    
}

static Store *_instance = nil;

+(id)sharedStore
{
    if(nil==_instance){
        _instance=[[Store alloc]init];
        [_instance openDB];
        
    }
    return _instance;
}

-(BOOL)openDB{
    NSString*docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString *dbFilePath = [docPath stringByAppendingString:@"point.sqlite"];
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL existFile = [fm fileExistsAtPath:dbFilePath];
    
    int ret = sqlite3_open([dbFilePath UTF8String], &point);
    
    if (SQLITE_OK != ret) {
        return NO;
    }
    
    if (existFile == NO) {
        const char *creatSQL = "CREATE TABLE IF NOT EXISTS MOVIE (TITLE TEXT)";
        char *errorMsg;
        ret = sqlite3_exec(point, creatSQL, NULL, NULL, &errorMsg);
        if (SQLITE_OK != ret) {
            [fm removeItemAtPath:dbFilePath error:nil];
            NSLog(@"creating table with ret : %d", ret);
            return NO;
        }
    }
    return YES;
}
- (NSInteger)addTeamName:(NSString*)name{
    NSString *sql = [NSString stringWithFormat:@"INSERT INTO TEAM('%@')",name];
    NSLog(@"sql:%@",sql);
    
    char *errMsg;
    int ret = sqlite3_exec(point, [sql UTF8String], NULL, nil, &errMsg);
    
    if (SQLITE_OK != ret) {
        NSLog(@"Error on Insert New data : %s", errMsg);
    }
    NSInteger TeamID = (NSInteger)sqlite3_last_insert_rowid(point);
    return TeamID;

}

- (NSString *)getNameOfTeamAtId:(NSInteger)rowId {
    NSString *queryStr = [NSString stringWithFormat:@"SELECT rowid, title FROM MOVIE where rowid=%d", (int)rowId];
    sqlite3_stmt *stmt;
    int ret = sqlite3_prepare_v2(point, [queryStr UTF8String], -1, &stmt, NULL);
    
    NSAssert2(SQLITE_OK == ret, @"Error(%d) on resolving data : %s", ret,sqlite3_errmsg(point));
    NSString *titleString;
    while (SQLITE_ROW == sqlite3_step(stmt)) {
        char *title = (char *)sqlite3_column_text(stmt, 1);
        titleString = [NSString stringWithCString:title encoding:NSUTF8StringEncoding];
    }
    
    sqlite3_finalize(stmt);
    return titleString;
}
- (NSString *)getNameOfTeamAtIndex:(NSInteger)index {
    NSString *queryStr = [NSString stringWithFormat:@"SELECT rowid, title FROM MOVIE limit %d, 1", (int)index];
    sqlite3_stmt *stmt;
    int ret = sqlite3_prepare_v2(point, [queryStr UTF8String], -1, &stmt, NULL);
    
    NSAssert2(SQLITE_OK == ret, @"Error(%d) on resolving data : %s", ret,sqlite3_errmsg(point));
    
    NSString *titleString;
    while (SQLITE_ROW == sqlite3_step(stmt)) {
        char *title = (char *)sqlite3_column_text(stmt, 1);
        titleString = [NSString stringWithCString:title encoding:NSUTF8StringEncoding];
        
    }
    
    sqlite3_finalize(stmt);
    return titleString;
}




@end
