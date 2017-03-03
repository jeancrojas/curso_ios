//
//  LoginViewController.h
//  LoginV2
//
//  Created by cice on 2/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldLoginVCUsuario;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLoginVCContrasenya;
@property (weak, nonatomic) IBOutlet UIButton *buttonLoginVBAceptar;
- (IBAction)buttonLoginVCAceptar:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButtonItemAdministracionLoginVC;
- (IBAction)barButtonItemAdministracionLoginVC:(id)sender;

@end
