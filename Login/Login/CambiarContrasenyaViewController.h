//
//  CambiarContrasenyaViewController.h
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CambiarContrasenyaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelCambiarContrasenyaVCUsuario;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCambiarContrasenyaVCContrasenya;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCambiarContrasenyaVCRepetirContrasenya;
@property (weak, nonatomic) IBOutlet UIButton *buttonCambiarContrasenyaVCAceptar;
- (IBAction)buttonCambiarContrasenyaVCAceptar:(id)sender;

@end
