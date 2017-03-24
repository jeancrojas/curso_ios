//
//  DetalleViajeViewController.m
//  ViajesBBDD
//
//  Created by cice on 23/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "DetalleViajeViewController.h"
#import "ViajeDAO.h"
#import "AppDelegate.h"

@interface DetalleViajeViewController ()

@end

@implementation DetalleViajeViewController

@synthesize labelTituloDetalleViajVC;
@synthesize imageViewImagenDetalleViajeVC;
@synthesize textViewDescripcionDetalleViajeVC;

//Botones
@synthesize buttonReservarDetalleViajeVC;
@synthesize buttonCancelarDetalleViajeVC;

//Lo que recibo de la clase ViajesCVC

@synthesize idViajeDetalleViajeVC;
@synthesize lugarDetalleViajeVC;
@synthesize descripcionDetalleViajeVC;
@synthesize plazasDetalleViajeVC;
@synthesize precioDetalleViajeVC;
@synthesize nombreImagenDetalleViajeVC;

ViajeDAO *daoDetalleViajeVC;
NSMutableArray *viajeDetalleViajeVC;
AppDelegate *appDelegateDetalleViajeVC;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    labelTituloDetalleViajVC.text = lugarDetalleViajeVC;
    imageViewImagenDetalleViajeVC.image = [UIImage imageNamed: nombreImagenDetalleViajeVC];
    textViewDescripcionDetalleViajeVC.text = descripcionDetalleViajeVC;
    
    [buttonReservarDetalleViajeVC setTitle:@"Reservar" forState: UIControlStateNormal];
    [buttonCancelarDetalleViajeVC setTitle:@"Cancelar" forState: UIControlStateNormal];
    appDelegateDetalleViajeVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
}

-(void) viewWillAppear:(BOOL)animated {
    daoDetalleViajeVC = [[ViajeDAO alloc]init];
    
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

- (IBAction)buttonReservarDetalleViajeVC:(id)sender {
    int idUsuarioDetalleViajeVC = appDelegateDetalleViajeVC.idUsuarioAppDelegate;
    [daoDetalleViajeVC reservarViaje:idViajeDetalleViajeVC idUsuario:idUsuarioDetalleViajeVC];
}

- (IBAction)buttonCancelarDetalleViajeVC:(id)sender {
}
@end
