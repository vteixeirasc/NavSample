//
//  vialifoErrorMsgFirstVC.m
//  NavSample
//
//  Created by Vitor Teixeira on 28/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import "vialifoErrorMsgFirstVC.h"

@implementation vialifoErrorMsgFirstVC 
@synthesize Msg;


-(UIAlertView * ) Displayerror{

    UIAlertView * msg= [[UIAlertView alloc] initWithTitle:@"Anteção" message:@"Teste" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Cancel", nil];
    return msg;

}

- (UIAlertView *) DisplayerrorWithMsg:(NSString *)title andMessage:(NSString *)message
{
    
    UIAlertView * msg= [[UIAlertView alloc] initWithTitle:title    message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Cancel", nil];
    self.Msg = msg;
    
    return Msg;
    
    
}


@end
