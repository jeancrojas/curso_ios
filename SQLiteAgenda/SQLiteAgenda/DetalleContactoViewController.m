//
//  DetalleContactoViewController.m
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "DetalleContactoViewController.h"

@interface DetalleContactoViewController ()

@end

@implementation DetalleContactoViewController

@synthesize labelNombreDetalleContactoVC;
@synthesize labelTelefonoDetalleContactoVC;
@synthesize labelDireccionDetalleContactoVC;

//Lo que pasan desde la clase ContactTableViewController
@synthesize nombre;
@synthesize telefono;
@synthesize direccion;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    labelNombreDetalleContactoVC.text = nombre;
    labelTelefonoDetalleContactoVC.text = telefono;
    labelDireccionDetalleContactoVC.text = direccion;
    
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

@end
