//
//  LoginViewController.m
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "LoginViewController.h"
#import "AccedoViewController.h"
#import "RegistroViewController.h"
#import "AppDelegate.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

AppDelegate *appDelegate;
UIAlertController *alert;
UIAlertAction *yesButton, *noButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textFieldUsuario.placeholder = @"Usuario";
    self.textFieldContrasenya.placeholder = @"Contraseña";
    [self.buttonAcceder setTitle: @"Acceder" forState: UIControlStateNormal];
    [self.buttonRegistrar setTitle: @"Registrar" forState: UIControlStateNormal];
    
    appDelegate = ((AppDelegate *) [[UIApplication sharedApplication]delegate] );
    alert = [UIAlertController alertControllerWithTitle: @"Autenticación" message: @"autenticandose..." preferredStyle: UIAlertControllerStyleAlert ];
    
    yesButton = [UIAlertAction actionWithTitle:@"Yes, please" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        NSLog(@"YES...");
    }];
    
    noButton = [UIAlertAction actionWithTitle:@"No, thanks. Usuario o Contraseña incorrecta" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        NSLog(@"NO...");
    }];
    
}

- (void)didReceiveMemryWarning {
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

- (IBAction)buttonAcceder:(id)sender {
    
    NSString *userIntroducido = self.textFieldUsuario.text;
    NSString *passwordIntroducido = self.textFieldContrasenya.text;
    Boolean autenticacion= false;
    
    for (int i=0; i < [appDelegate.listaUsuarios count]; i++) {
        NSString *userAlmacenado = [appDelegate.listaUsuarios objectAtIndex:i ];
        NSString *passwordAlmacenado = [appDelegate.listaContrasenyas objectAtIndex:i ];
        
        //Comprueba si es valido el usuario, si lo es cargara la siguiente ventana
        if ( [userIntroducido isEqualToString:userAlmacenado] && [passwordIntroducido isEqualToString:passwordAlmacenado] ) {
            AccedoViewController *vistaVC = [self.storyboard instantiateViewControllerWithIdentifier: @"idAccedoViewController"];
            [self showViewController:vistaVC sender: nil ];
            autenticacion = true;
        };
    }
    
    
    if (!autenticacion){
        [alert addAction:noButton];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
    
    
}

- (IBAction)buttonRegistrar:(id)sender {
    RegistroViewController *vistaVC = [self.storyboard instantiateViewControllerWithIdentifier: @"idRegistroViewController"];
    [self showViewController:vistaVC sender: nil];
}
@end
