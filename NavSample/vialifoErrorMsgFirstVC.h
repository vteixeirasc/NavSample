//
//  vialifoErrorMsgFirstVC.h
//  NavSample
//
//  Created by Vitor Teixeira on 28/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import "ErrorMessage.h"


@interface vialifoErrorMsgFirstVC : NSObject <ErrorMessage>

@property (strong,nonatomic) UIAlertView *Msg;

- (UIAlertView * ) Displayerror;
- (UIAlertView *) DisplayerrorWithMsg:(NSString *)title andMessage:(NSString *)message;


@end
