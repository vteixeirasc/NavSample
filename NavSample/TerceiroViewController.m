//
//  TerceiroViewController.m
//  NavSample
//
//  Created by Vitor Teixeira on 31/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import "TerceiroViewController.h"


@implementation TerceiroViewController

@synthesize ImageViewer;
@synthesize ScrollV
;
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
    // Do any additional setup after loading the view.
    self.ScrollV.minimumZoomScale = 0.1;
    self.ScrollV.maximumZoomScale = 6.0;
    
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

- (IBAction)ShowImage:(id)sender {
    UIImage *img = [UIImage imageNamed:@"images.jpeg"];
    [self.ImageViewer initWithImage:img];
    
}

- (UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.ImageViewer;
}
@end
