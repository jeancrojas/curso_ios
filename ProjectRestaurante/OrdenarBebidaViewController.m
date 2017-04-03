//
//  OrdenarBebidaViewController.m
//  ProjectRestaurante
//
//  Created by cice on 3/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "OrdenarBebidaViewController.h"

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
int numOrdenarBebidaVC = 0;

//Se asigna el valor desde la otra clase ElegirBebidaPedidoCollectionViewController
@synthesize nombreOrdenarBebidaVC;
@synthesize precioOrdenarBebidaVC;
@synthesize descripcionOrdenarBebidaVC;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Descripcion con texto de relleno
    NSString *descripcionTxtRelleno = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur mattis purus nec elementum congue. Nunc suscipit massa non est posuere, quis ultricies turpis volutpat. Sed libero ante, vehicula eget enim rutrum, pretium sodales tellus. Donec blandit mollis est, vitae vestibulum nisl lobortis sit amet. Duis euismod congue sollicitudin. Nullam imperdiet nibh in risus ultrices aliquet sed a odio. Ut id arcu ac felis porttitor lacinia at at dui. Integer fermentum cursus interdum.";
    
    //Mostrando la informacion por pantalla
    labelNumeroOrdenarBebidaVC.text = [@(numOrdenarBebidaVC) stringValue] ;
    labelTituloOrdenarBebidaVC.text = nombreOrdenarBebidaVC;
    labelPrecioOrdenarBebidaVC.text = [NSString stringWithFormat: @"%.2f€", precioOrdenarBebidaVC];
    textViewDescripcionOrdenarBebidaVC.text = descripcionTxtRelleno;
    
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
@end
