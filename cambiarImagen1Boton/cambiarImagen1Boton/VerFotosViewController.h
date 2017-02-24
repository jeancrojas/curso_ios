//
//  VerFotosViewController.h
//  cambiarImagen1Boton
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VerFotosViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageViewFoto;
@property (weak, nonatomic) IBOutlet UIButton *buttonCambiarImagen;
- (IBAction)buttonCambiarImagen:(id)sender;

@end
