//
//  ModelViewController.h
//  NavSample
//
//  Created by Vitor Teixeira on 04/06/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"

@interface ModelViewController : UIViewController


@property (strong,nonatomic) NSString *database;
@property (nonatomic) sqlite3 *listaDB;
@property (strong,nonatomic) UIAlertView *Msg;
@end
