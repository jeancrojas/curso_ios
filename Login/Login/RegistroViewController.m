//
//  RegistroViewController.m
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "RegistroViewController.h"
#import "AppDelegate.h"
#import "LoginViewController.h"

@interface RegistroViewController ()

@end

@implementation RegistroViewController
AppDelegate *appDelegateRegistro;
UIAlertController *alertRegistro;
UIAlertAction *confirmacionButton;

- (void)viewDidLoad {
    
    
    self.textFieldUsuario.placeholder = @"Usuario...";
    self.textFieldNombre.placeholder = @"Nombre...";
    self.textFieldContrasenya.placeholder = @"Contraseña...";
    self.textFieldRepetirContrasenya.placeholder = @"Repetir contraseña...";
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.buttonAcepto setTitle: @"Acepto" forState: UIControlStateNormal];
    appDelegateRegistro = ((AppDelegate *) [[UIApplication sharedApplication]delegate]);
    
    alertRegistro = [UIAlertController alertControllerWithTitle: @"Registro" message:@"Se ha registrado Correctamente" preferredStyle: UIAlertControllerStyleAlert];
    
    confirmacionButton = [UIAlertAction actionWithTitle:@"Se ha registrado Correcta" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonAcepto:(id)sender {
    NSString *nombreIntroducida = self.textFieldNombre.text;
    NSString *usuarioIntroducida = self.textFieldUsuario.text;
    NSString *contrasenyaIntroducida = self.textFieldContrasenya.text;
    NSString *contrasenyaRepetidaIntroducida = self.textFieldRepetirContrasenya.text;
    
    if ( [contrasenyaIntroducida isEqualToString: contrasenyaRepetidaIntroducida ] && ![contrasenyaIntroducida isEqualToString: @""] ){
        [appDelegateRegistro.listaNombres addObject: nombreIntroducida];
        [appDelegateRegistro.listaUsuarios addObject: usuarioIntroducida ];
        [appDelegateRegistro.listaContrasenyas addObject: contrasenyaIntroducida ];
        
        [alertRegistro addAction: confirmacionButton];
        [self presentViewController:alertRegistro animated:YES completion:nil];
    }
    
    
    
}
@end
