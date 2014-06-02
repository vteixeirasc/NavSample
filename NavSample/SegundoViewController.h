//
//  SegundoViewController.h
//  NavSample
//
//  Created by Vitor Teixeira on 23/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ErrorMessage.h"

@interface SegundoViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *Text;
@property (weak, nonatomic) IBOutlet UILabel *lblteste;
@property (nonatomic) int count;

@property (weak, nonatomic) IBOutlet UIScrollView *aScrollviewer;


@property (strong,nonatomic) UIAlertView * Msg;

- (IBAction)TrocarLaben:(id)sender;
- (IBAction)EditChanged:(id)sender;
//- (IBAction)ShowKeyBoardCancelButton:(id)sender;
- (IBAction)EditText:(id)sender;
-(void)keyboardWasShown;
-(void)keyboardWillBeHidden:(NSNotification *) notification;
-(void)keyboardWasShown:(NSNotification *) notification;
@end
