//
//  PrincipalViewController.m
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "PrincipalViewController.h"
#import "MapaViewController.h"
#import "TiendaTableViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

int tipoTienda;
MapaViewController *vistaMapaVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.buttonBuscarPrincipalVC setTitle:@"Buscar" forState:UIControlStateNormal];
    
    [self.buttonTodasPrincipalVC setTitle:@"Mostrar Todas" forState:UIControlStateNormal];
    vistaMapaVC = [[MapaViewController alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"seguePrincipalVCATiendaTVC"]){
        TiendaTableViewController *vistaTiendaTVC = segue.destinationViewController;
        vistaTiendaTVC.tipoTiendaTiendaTVC = tipoTienda;
    }
    
    if([segue.identifier isEqualToString:@"seguePrincipalVCAMapaVC"]){
        vistaMapaVC = segue.destinationViewController;
        vistaMapaVC.tiendaSeleccionada = false;
    }
    
    
}


- (IBAction)buttonBuscarPrincipalVC:(id)sender {
    
    // cPIntroducido = self.textFieldCP;
    NSString *tipoIntroducido = self.textFieldTipo.text;
    NSMutableArray *tipos = [[NSMutableArray alloc]init];
    
    [tipos addObject:@"informatica"];
    [tipos addObject:@"electronica"];
    [tipos addObject:@"centro de formacion"];
    
    
    for (int i=0; i < [tipos count]; i++) {
        if ([[tipos objectAtIndex:i] containsString:tipoIntroducido] ) {
            NSLog(@"Ha dado: %@",[tipos objectAtIndex:i]);
            tipoTienda = i;
        }
    }
    
}

- (IBAction)buttonTodasPrincipalVC:(id)sender {
    /*
    vistaMapaVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idMapaVC" ];
    
    [self showViewController:vistaMapaVC sender:nil];
    */
}
@end
