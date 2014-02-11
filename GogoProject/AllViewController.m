//
//  AllViewController.m
//  GogoProject
//
//  Created by SDT-1 on 2014. 1. 28..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "AllViewController.h"

#import "Product.h"
#import "ProductCell.h"
#import <sqlite3.h>
#define CELL_ID @"CELL_ID"


@interface AllViewController()<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *DateLabel;
@end



@implementation AllViewController {
    NSArray *data;
    
    sqlite3 *point;
    
}

/*
-(void)openDB{
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString *dbFilePath = [docPath stringByAppendingPathComponent:@"point.sqlite"];
    
    NSFileManager  *fm = [NSFileManager defaultManager];
    BOOL existFile = [fm fileExistsAtPath:dbFilePath];
    
    
    int ret = sqlite3_open([dbFilePath UTF8String], &point);
    NSAssert1(SQLITE_OK==ret,@"Error on opening Database:%s", sqlite3_errmsg(point));
    NSLog(@"Success on Opening Database");
    
    if(NO == existFile){
        const char *createSQL = "CREATE TABLE IF NOT EXISTS MOVIE(TITLE TEXT)";
        char *errorMsg;
        ret = sqlite3_exec(point, createSQL, NULL, NULL, &errorMsg);
        if(ret   != SQLITE_OK)
            [fm removeItemAtPath:dbFilePath error:nil];
        NSAssert1(SQLITE_OK==ret,@"Error on creating table :%s", errorMsg);
        NSLog(@"creating table with ret : %d",ret);
    }
    
}
-(void)addData:(NSString*)input{
    NSLog(@"adding data: %@",input);
    
    
    NSString *sql = [NSString stringWithFormat:@"INSERT INTO MOVIE(TITLE) VALUES('%@')",input];
    NSLog(@"sql:%@",sql);
    
    char *errMsg;
    int ret = sqlite3_exec(point,[sql UTF8String],NULL,nil,&errMsg);
    
    if(SQLITE_OK  !=ret){
        
        NSLog(@"Error on Insert New data: %s",errMsg);
    }
    
    
    [self resolveData];
}
-(void)closeDB{
    sqlite3_close(point);
}

-(void)resolveData{
    [data removeAllObjects];
    
    NSString *queryStr = @"SELECT rowid,title FROM MOVIE";
    sqlite3_stmt *stmt;
    int ret = sqlite3_prepare_v2(point, [queryStr UTF8String], -1, &stmt, NULL);
    
    NSAssert2(SQLITE_OK == ret, @"Error(%d) on resolving data : %s", ret, sqlite3_errmsg(point));
    
    while (SQLITE_ROW == sqlite3_step(stmt)) {
        int rowID =  sqlite3_column_int(stmt, 0);
        char *title = (char*)sqlite3_column_text(stmt, 1);
        
        Model *one = [[Model alloc]init];
        one.i = rowID;
        one.title = [NSString stringWithCString:title encoding:NSUTF8StringEncoding];
        [data addObject:one];
    }
    
    
}
 */

- (IBAction)AllMY:(id)sender {
    [self performSegueWithIdentifier:@"AllMy" sender:self];
}


-(void)DateOfYear{
    
    NSDateFormatter *today =[[NSDateFormatter alloc]init];
    
    [today setDateFormat:@"yyyy.MM.dd"];
    NSString *date  = [today stringFromDate:[NSDate date]];
    self.DateLabel.text =[NSString stringWithFormat:@"<%@>",date];
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row==0){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"팀을선택하세요" message:nil delegate:self cancelButtonTitle:@"teamname1" otherButtonTitles:@"teamname2", nil];
    alert.tag=1;
        [alert show];}
    else {

        UIAlertView *alert2 =[[UIAlertView alloc]initWithTitle:@"팀을선택하세요" message:nil delegate:self cancelButtonTitle:@"sk" otherButtonTitles:@"한화", nil];
    alert2.tag=2;
    [alert2 show];
    }
    
    
    
    
}

-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(1== alertView.tag){
    
    if(alertView.firstOtherButtonIndex==buttonIndex){
        
         [self performSegueWithIdentifier:@"log" sender:self];
        
        
        
    }
        else if  (alertView.cancelButtonIndex==buttonIndex){
            [self performSegueWithIdentifier:@"log" sender:self];
        }
    }
    
    if(2 == alertView.tag){
        
        if(alertView.firstOtherButtonIndex==buttonIndex){
            [self performSegueWithIdentifier:@"log" sender:self];
        }
        else if(alertView.cancelButtonIndex==buttonIndex){
            [self performSegueWithIdentifier:@"log" sender:self];
        }
    }
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL_ID" ];
    Product*item = data[indexPath.row];
    [cell setProductInfo:item];
    return cell;
    }
    
        

    






-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
        
    
    return [data count];
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
    [self DateOfYear];
    
    
    data=@[[Product product1:@"청팀" product2:@"백팀" time:@"08:00" image:@""],
           [Product product1:@"sk" product2:@"한화" time:@"09:00" image:@"엠블럼.png"],
           [Product product1:@"삼성" product2:@"기아" time:@"10:00" image:@"엠블럼.png"]];
           }
   /*
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"GoodMobiPro-CondBold" size:24];
    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    label.textAlignment = UITextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    self.navigationItem.titleView = label;
    label.text = @"Matches Today";
    [label sizeToFit];
*/
    
	// Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
