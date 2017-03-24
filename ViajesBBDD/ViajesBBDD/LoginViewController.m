//
//  LoginViewController.m
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "LoginViewController.h"
#import "SWRevealViewController.h"
#import "UsuarioDAO.h"
#import "Usuario.h"
#import "AppDelegate.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize textFieldUserLoginVC;
@synthesize textFieldPassLoginVC;
@synthesize buttonValidarLoginVC;
UsuarioDAO *usuarioDAO;
NSMutableArray *listaUsuario;
AppDelegate *appDelegateLoginVC;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    textFieldUserLoginVC.placeholder = @"usuario...";
    textFieldPassLoginVC.placeholder = @"contraseña...";
    [buttonValidarLoginVC setTitle:@"Iniciar sessión" forState: UIControlStateNormal];
    [buttonValidarLoginVC.layer setBorderWidth:1];
    [buttonValidarLoginVC.layer setBorderColor: [[UIColor grayColor ]CGColor] ];
    /*
    [buttonValidarLoginVC.layer setShadowOffset:CGSizeMake(5, 5 )];
    [buttonValidarLoginVC.layer setShadowColor:[[UIColor blackColor]CGColor] ];
     
    [buttonValidarLoginVC.layer setShadowOpacity:0.5];
     */
    buttonValidarLoginVC.layer.cornerRadius = 5;
    appDelegateLoginVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated {
    usuarioDAO = [[UsuarioDAO alloc]init];
    listaUsuario = [[NSMutableArray alloc]init];
    listaUsuario = [usuarioDAO obtenerContactos];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonValidarLoginVC:(id)sender {
    /*
    [buttonValidarLoginVC setBackgroundColor: [UIColor grayColor]];
    [buttonValidarLoginVC setTitleColor:[UIColor blueColor] forState: UIControlStateNormal];
    */
    Boolean autenticacion = NO;
    
    NSString *usuario = textFieldUserLoginVC.text;
    NSString *contrasenya = textFieldPassLoginVC.text;
    
    
    for (int i=0 ; i < [listaUsuario count]; i++) {
        
        Usuario *userTmp = [listaUsuario objectAtIndex:i];
        if ([userTmp.userAccount isEqualToString:usuario] && [userTmp.passAccount isEqualToString:contrasenya]) {
            appDelegateLoginVC.idUsuarioAppDelegate = userTmp.idUsuario;
            autenticacion = YES;
            break;
        }
    }
    
    
    if (autenticacion) {
        SWRevealViewController *vistaSWRevealVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idSWRevealVC"];
        [self showViewController:vistaSWRevealVC sender:nil];
    }
    
}
@end
