//
//  AnyadirContactoViewController.m
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AnyadirContactoViewController.h"
#import "AgendaDAO.h"

@interface AnyadirContactoViewController ()

@end

@implementation AnyadirContactoViewController
@synthesize textFieldNombreAnyadirContactoVC;
@synthesize textFieldTelefonoAnyadirContactoVC;
@synthesize textFieldDireccionAnyadirContactoVC;
@synthesize buttonAnyadirAnyadirContactoVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    textFieldNombreAnyadirContactoVC.placeholder = @"nombre...";
    textFieldTelefonoAnyadirContactoVC.placeholder = @"teléfono...";
    textFieldDireccionAnyadirContactoVC.placeholder = @"dirección...";
    
    [buttonAnyadirAnyadirContactoVC setTitle:@"Añadir" forState: UIControlStateNormal];
    
    
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

- (IBAction)buttonAnyadirAnyadirContactoVC:(id)sender {
    
    AgendaDAO *anyadirContacto = [[AgendaDAO alloc]init];
    NSString *nombre = textFieldNombreAnyadirContactoVC.text;
    NSString *telefono = textFieldTelefonoAnyadirContactoVC.text;
    NSString *direccion = textFieldDireccionAnyadirContactoVC.text;
    
    if (![anyadirContacto anyadirContactos:nombre Telefono:telefono Direccion:direccion]) {
        NSLog(@"Error al Añadir");
    }
    
    
}
@end
