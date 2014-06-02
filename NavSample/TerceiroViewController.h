//
//  TerceiroViewController.h
//  NavSample
//
//  Created by Vitor Teixeira on 31/05/14.
//  Copyright (c) 2014 Vitor Teixeira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TerceiroViewController : UIViewController <UIImagePickerControllerDelegate,UIScrollViewDelegate>

- (IBAction)ShowImage:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *ImageViewer;
@property (strong, nonatomic) IBOutlet UIScrollView *ScrollV;

- (UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView;
@end
