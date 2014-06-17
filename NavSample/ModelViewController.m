//
//  ModelViewController.m
//  NavSample
//
//  Created by Vitor Teixeira on 04/06/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import "ModelViewController.h"

@interface ModelViewController ()

@end

@implementation ModelViewController

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
    
    NSString *docsDir;
    NSArray *dirPaths;
    
    self.Msg = [[UIAlertView alloc] init];
    [self.Msg addButtonWithTitle:@"Conectar"];
    
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    
    self.database = [[NSString alloc] initWithString:[docsDir stringByAppendingPathComponent:@"Contacts.db"]];
    
    NSFileManager *filemanager = [NSFileManager defaultManager];
    
    if ([filemanager fileExistsAtPath: self.database ] == NO)
    {
        const char *dbpath = [self.database UTF8String];
        
        if (sqlite3_open(dbpath, &_listaDB) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt =
            "CREATE TABLE IF NOT EXISTS CONTACTS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, ADDRESS TEXT, PHONE TEXT)";
            
            if (sqlite3_exec(_listaDB, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                NSLog(@"CRIADO");
                
            }
            sqlite3_close(_listaDB);
        } else {
                NSLog(@"FALHA");
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
