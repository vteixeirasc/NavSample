//
//  vialifoViewController.m
//  NavSample
//
//  Created by Vitor Teixeira on 23/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import "vialifoViewController.h"


@implementation vialifoViewController
@synthesize Message;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.Message = [[vialifoErrorMsgFirstVC alloc] init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    self.count ++;
    SegundoViewController *segundoVC = [segue destinationViewController];
    [segundoVC setCount: self.count];

}

- (IBAction)showSomething:(id)sender {
    [self ShowError];
}

- (void) ShowError
{
    [[self.Message DisplayerrorWithMsg:@"Titulo" andMessage:@"Mensagem"] show];
}
@end
