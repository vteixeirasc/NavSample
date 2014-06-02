//
//  ErrorMessage.h
//  NavSample
//
//  Created by Vitor Teixeira on 27/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ErrorMessage <NSObject>

- (UIAlertView *)Displayerror;

@optional

- (UIAlertView *)DisplayerrorWithMsg:(NSString *)msg;
- (void) ShowMessage:(UIAlertView *)alert;

@end
