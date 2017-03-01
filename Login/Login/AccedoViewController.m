//
//  AccedoViewController.m
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AccedoViewController.h"
#import "CambiarContrasenyaViewController.h"
#import "AppDelegate.h"

@interface AccedoViewController ()

@end

@implementation AccedoViewController

AppDelegate *appDelegateAcceso;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    appDelegateAcceso = ((AppDelegate *) [[UIApplication sharedApplication]delegate] );
    
    
    NSUInteger numeroUsurio =[appDelegateAcceso.listaUsuarios count]-1;
    
    //Se obtenie el ultimo usuario
    NSString *usuario = [appDelegateAcceso.listaNombres objectAtIndex:numeroUsurio ];
    
    
    self.labelSaludos.text = [NSString stringWithFormat: @"Hola %@",usuario];
    [self.buttonEditarClave setTitle: @"Editar Clave" forState: UIControlStateNormal];
    
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

- (IBAction)buttonEditarClave:(id)sender {
    
    CambiarContrasenyaViewController *vistaVC = [self.storyboard instantiateViewControllerWithIdentifier: @"idCambiarContrasenyaViewController" ];
    
    [self showViewController: vistaVC sender: nil ];
    
}
@end
