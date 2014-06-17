//
//  SegundoViewController.m
//  NavSample
//
//  Created by Vitor Teixeira on 23/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import "SegundoViewController.h"


@implementation SegundoViewController

@synthesize Text;
@synthesize lblteste;
@synthesize count;
@synthesize Msg;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom Code
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];


    //self.Text.delegate = self;
    
    self.Msg = [[UIAlertView alloc] init];
    [self.Msg addButtonWithTitle:@"Conectar"];
//    [self.Msg setAlertViewStyle:2];
    
    lblteste.text = [NSString stringWithFormat:@" Quantidade acessada é %d",self.count];
    

    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
    
 
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

- (IBAction)TrocarLaben:(id)sender {
    

    
    UIAlertView *msg = [[UIAlertView alloc] initWithTitle:@"Teste" message:@"Teste1" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Cancelar", nil];
    
    [msg show];
    
    
    
}

- (IBAction)EditChanged:(id)sender {
    
    self.Msg.title = @"TextField";
    self.Msg.message = @"Alteração";
    [self.Msg show];
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:@"Delete Note"
                                                    otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}


-(void)keyboardWasShown:(NSNotification *) aNotification
{
    
    NSDictionary* info = [aNotification userInfo];
    CGSize KbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, KbSize.height+64, 0.0);
    
    self.aScrollviewer.contentInset = contentInsets;
    self.aScrollviewer.scrollIndicatorInsets = contentInsets;
    
    // If active text field is hidden by keyboard, scroll it so it's visible
    // Your app might not need or want this behavior.
    CGRect aRect = self.view.frame;
    aRect.size.height -= KbSize.height;
    if (!CGRectContainsPoint(aRect, self.Text.frame.origin) ) {
        [self.aScrollviewer scrollRectToVisible:self.Text.frame animated:YES];
    }
   
}

- (IBAction)TrocadeValor:(id)sender {
    
    
    if (self.aSwitch.on){
        
        [self.aActivityIndicator startAnimating];
        self.Msg.title = @"ASwitch";
        self.Msg.message = @"Ativo";
        
    }
    else
    {
        [self.aActivityIndicator stopAnimating];
        self.Msg.title = @"ASwitch";
        self.Msg.message = @"Inativo";
        
    }
    
    [self.Msg show];

    
    
}

- (IBAction)TrocaSlider:(id)sender {
    

    self.aLabel.text = [NSString stringWithFormat:@"Valor Slider é : %f",self.aSlider.value];

}

- (IBAction)ChangeSteperLabelValue:(id)sender {
    
    self.Msg.title = @"Stepper";
    self.Msg.message = @"Step";
    [self.Msg show];
    
    self.aSteperLbl.text = [NSString stringWithFormat:@" Steper está em : %d",self.aStepper.value];

}

-(void)keyboardWillBeHidden:(NSNotification *) notification
{
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    contentInsets.top = 64;
    self.aScrollviewer.contentInset = contentInsets;
    self.aScrollviewer.scrollIndicatorInsets = contentInsets;
    
   // [self.Msg show];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)EditText:(id)sender {
    
    self.Msg.title = @"TextField";
    self.Msg.message = @"Terminou a Edição";
    [self.Msg show];
    

}



@end
