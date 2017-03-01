//
//  RegistroViewController.h
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RegistroViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldUsuario;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNombre;
@property (weak, nonatomic) IBOutlet UITextField *textFieldContrasenya;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRepetirContrasenya;
@property (weak, nonatomic) IBOutlet UIButton *buttonAcepto;
- (IBAction)buttonAcepto:(id)sender;

@end
