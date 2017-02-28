//
//  AnyadirUsuarioViewController.m
//  ListaUsuariosTablaDinamica
//
//  Created by cice on 28/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AnyadirUsuarioViewController.h"
#import "AppDelegate.h"


@interface AnyadirUsuarioViewController ()

@end

@implementation AnyadirUsuarioViewController
AppDelegate *appDelegateAnyadirUSuario;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.labelNombre.text = @"Nombre:";
    self.labelTelefono.text = @"Telefono:";
    self.labelEmail.text = @"Email:";
    
    [self.buttonAnyadir setTitle:@"Añadir" forState: UIControlStateNormal];
    
    appDelegateAnyadirUSuario = ((AppDelegate *)[[UIApplication sharedApplication] delegate]);
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

- (IBAction)buttonAnyadir:(id)sender {
    
    NSString *nombre = self.textFieldNombre.text;
    [appDelegateAnyadirUSuario.listaUsuarios addObject:nombre];
}
@end
