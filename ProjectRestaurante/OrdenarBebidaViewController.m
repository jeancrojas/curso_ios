//
//  OrdenarBebidaViewController.m
//  ProjectRestaurante
//
//  Created by cice on 3/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "OrdenarBebidaViewController.h"
#import "AppDelegate.h"
#import "Mesa.h"

@interface OrdenarBebidaViewController ()

@end

@implementation OrdenarBebidaViewController

@synthesize labelTituloOrdenarBebidaVC;
@synthesize imageViewOrdenarBebidaVC;
@synthesize labelPrecioOrdenarBebidaVC;
@synthesize textViewDescripcionOrdenarBebidaVC;
@synthesize buttonMenosOrdenarBebidaVC;
@synthesize buttonMasOrdenarBebidaVC;
@synthesize labelNumeroOrdenarBebidaVC;
@synthesize buttonAceptarOrdenarBebidaVC;
int numOrdenarBebidaVC = 0;

//Se asigna el valor desde la otra clase ElegirBebidaPedidoCollectionViewController
@synthesize nombreOrdenarBebidaVC;
@synthesize precioOrdenarBebidaVC;
@synthesize descripcionOrdenarBebidaVC;

AppDelegate *appDelegateOrdenarBebidaVC;
NSMutableArray *listaMesaOrdenarBebidaVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    appDelegateOrdenarBebidaVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    listaMesaOrdenarBebidaVC = appDelegateOrdenarBebidaVC.listaMesa;
    
    //Descripcion con texto de relleno
    NSString *descripcionTxtRelleno = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur mattis purus nec elementum congue. Nunc suscipit massa non est posuere, quis ultricies turpis volutpat. Sed libero ante, vehicula eget enim rutrum, pretium sodales tellus. Donec blandit mollis est, vitae vestibulum nisl lobortis sit amet. Duis euismod congue sollicitudin. Nullam imperdiet nibh in risus ultrices aliquet sed a odio. Ut id arcu ac felis porttitor lacinia at at dui. Integer fermentum cursus interdum.";
    
    //Mostrando la informacion por pantalla
    labelNumeroOrdenarBebidaVC.text = [@(numOrdenarBebidaVC) stringValue] ;
    labelTituloOrdenarBebidaVC.text = nombreOrdenarBebidaVC;
    labelPrecioOrdenarBebidaVC.text = [NSString stringWithFormat: @"%.2f€", precioOrdenarBebidaVC];
    textViewDescripcionOrdenarBebidaVC.text = descripcionTxtRelleno;
    [buttonAceptarOrdenarBebidaVC setTitle:@"Aceptar" forState: UIControlStateNormal];
    
    NSLog(@"La mesa que se esta tratando es la %d", appDelegateOrdenarBebidaVC.mesaSeleccionada);
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

- (IBAction)buttonMenosOrdenarBebidaVC:(id)sender {
    if (numOrdenarBebidaVC > 0){
        numOrdenarBebidaVC--;
        labelNumeroOrdenarBebidaVC.text = [@(numOrdenarBebidaVC) stringValue];
    }
}

- (IBAction)buttonMasOrdenarBebidaVC:(id)sender {
    if (numOrdenarBebidaVC < 10){
        numOrdenarBebidaVC++;
        labelNumeroOrdenarBebidaVC.text = [@(numOrdenarBebidaVC) stringValue];
    }
    
}
- (IBAction)buttonAceptarOrdenarBebidaVC:(id)sender {
    /*
    [self.navigationController popToRootViewControllerAnimated:YES];
    //[self.tabBarController popView]
    UITabBarController *vistaTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idSeleccionarPedidoTBC"];
    [self showViewController:vistaTVC sender:nil];
    //idSeleccionarPedidoTBC
     */
    double importe = precioOrdenarBebidaVC * numOrdenarBebidaVC;
    Mesa *mesa = [listaMesaOrdenarBebidaVC objectAtIndex: appDelegateOrdenarBebidaVC.mesaSeleccionada-1];
    
    mesa.precio += importe;
    numOrdenarBebidaVC = 0;
    
}
@end
