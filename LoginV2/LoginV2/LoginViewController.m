//
//  LoginViewController.m
//  LoginV2
//
//  Created by cice on 2/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "LoginViewController.h"
#import "CategoriasTableViewController.h"
#import "AppDelegate.h"
#import "AdminViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

AppDelegate *appDelegateLoginVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textFieldLoginVCUsuario.placeholder = @"Usuario";
    self.textFieldLoginVCContrasenya.placeholder = @"Contraseña";
    [self.buttonLoginVBAceptar setTitle:@"Aceptar" forState: UIControlStateNormal];
    
    appDelegateLoginVC = ((AppDelegate *) [[UIApplication sharedApplication]delegate]);
    
    [self.barButtonItemAdministracionLoginVC setTitle:@"Administracion"];
    
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

- (IBAction)buttonLoginVCAceptar:(id)sender {
    
    NSString *user = self.textFieldLoginVCUsuario.text;
    NSString *password= self.textFieldLoginVCUsuario.text;
    Boolean autenticacion = [self autenticacion: user End:password];
    
    
    
    if (autenticacion) {
        CategoriasTableViewController  *vistaVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idCategoriasTableVC"];
        
        [self showViewController:vistaVC sender: nil];
    }
    
}
- (IBAction)barButtonItemAdministracionLoginVC:(id)sender {
    Boolean esAdministrador=false;
    NSString *user = self.textFieldLoginVCUsuario.text;
    NSString *password= self.textFieldLoginVCUsuario.text;
    
    if ([self autenticacion: user End:password]) {
        if ([[user substringToIndex:5 ]isEqualToString:@"admin"] ) {
            esAdministrador=true;
            NSLog(@"%@", user);
        }
        
        if (esAdministrador) {
            NSLog(@"Eres administrador");
            AdminViewController *vistaAdminVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idAdminVC"];
            [self showViewController:vistaAdminVC sender:nil];
        }
    }
    
}

- (Boolean) autenticacion:(NSString *)user End:(NSString *)password {
    
    
    Boolean seAutentico = false;
    
    for (int i=0; i < [appDelegateLoginVC.listaUsuarios count]; i++) {
        NSString *usuarioAlmacenado = [appDelegateLoginVC.listaUsuarios objectAtIndex:i ];
        
        NSString *contrasenyaAlmacenado = [appDelegateLoginVC.listaContrasenyaUsuarios objectAtIndex:i ];
        
        if ( [user isEqualToString:usuarioAlmacenado] && [password isEqualToString:contrasenyaAlmacenado] ) {
            seAutentico = true;
            break;
        }
    }
    
    if (seAutentico) {
        return true;
    }
    
    return false;
}

@end
