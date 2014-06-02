//
//  vialifoViewController.h
//  NavSample
//
//  Created by Vitor Teixeira on 23/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SegundoViewController.h"
#import "vialifoErrorMsgFirstVC.h"

@interface vialifoViewController : UIViewController;
@property int count;
@property (strong,nonatomic) vialifoErrorMsgFirstVC *Message;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
- (IBAction)showSomething:(id)sender;
- (void) ShowError;




@end
