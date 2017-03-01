//
//  CambiarContrasenyaViewController.m
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "CambiarContrasenyaViewController.h"
#import "AppDelegate.h"
#import "LoginViewController.h"

@interface CambiarContrasenyaViewController ()

@end

@implementation CambiarContrasenyaViewController

AppDelegate *appDelegateCambiarContrasenya;
NSUInteger numeroUsurio;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    appDelegateCambiarContrasenya = ((AppDelegate *) [[UIApplication sharedApplication]delegate] );
    
    
    numeroUsurio =[appDelegateCambiarContrasenya.listaUsuarios count]-1;
    
    //Se obtenie el ultimo usuario
    NSString *usuario = [appDelegateCambiarContrasenya.listaNombres objectAtIndex:numeroUsurio ];
    
    self.labelCambiarContrasenyaVCUsuario.text = usuario;
    
    [self.buttonCambiarContrasenyaVCAceptar setTitle:@"Aceptar" forState:UIControlStateNormal];
    
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

- (IBAction)buttonCambiarContrasenyaVCAceptar:(id)sender {
    
    NSString *contrasenyaIntroducida = self.textFieldCambiarContrasenyaVCContrasenya.text;
    NSString *repetirContrasenyaIntroducida = self.textFieldCambiarContrasenyaVCRepetirContrasenya.text;
    
    if ( [contrasenyaIntroducida isEqualToString:repetirContrasenyaIntroducida] ) {
        [appDelegateCambiarContrasenya.listaContrasenyas replaceObjectAtIndex: numeroUsurio withObject: contrasenyaIntroducida ];
        LoginViewController *vistaVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idLoginViewController"];
        [self showViewController:vistaVC sender: nil];
    }
    
}
@end
