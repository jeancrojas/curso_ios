//
//  DetalleProductoViewController.m
//  LoginV2
//
//  Created by cice on 2/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "DetalleProductoViewController.h"
#import "AppDelegate.h"

@interface DetalleProductoViewController ()

@end

@implementation DetalleProductoViewController

AppDelegate *appDelegateDetalleProductoVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    appDelegateDetalleProductoVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
    
    NSString *productoTratado = [appDelegateDetalleProductoVC.listaProductosCPU objectAtIndex:(int)self.detalleDelProducto];
    
    
    NSLog(@"Se ha seleccionado el producto: %@",productoTratado);
    self.labelDetalleDetalleProductoVC.text =[NSString stringWithFormat: @"Detalles del producto....%@",productoTratado];
    
    [self.buttonComprarDetalleProductoVC setTitle:@"Comprar" forState: UIControlStateNormal];
    
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

- (IBAction)buttonComprarDetalleProductoVC:(id)sender {
}
@end
