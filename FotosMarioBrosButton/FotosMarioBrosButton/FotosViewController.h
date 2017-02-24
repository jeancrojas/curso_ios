//
//  FotosViewController.h
//  FotosMarioBrosButton
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FotosViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewFoto;
@property (weak, nonatomic) IBOutlet UIButton *buttonFoto1;
- (IBAction)buttonFoto1:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonFoto2;
- (IBAction)buttonFoto2:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonFoto3;
- (IBAction)buttonFoto3:(id)sender;

@end
