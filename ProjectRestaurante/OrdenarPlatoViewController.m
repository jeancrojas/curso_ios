//
//  OrdenarPlatoViewController.m
//  ProjectRestaurante
//
//  Created by cice on 3/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "OrdenarPlatoViewController.h"

@interface OrdenarPlatoViewController ()

@end

@implementation OrdenarPlatoViewController

@synthesize labelTituloOrdenarPlatoVC;
@synthesize labelPrecioOrdenarPlatoVC;
@synthesize textViewDescripcionOrdenarPlatoVC;
@synthesize buttonMenosOrdenarPlatoVC;
@synthesize buttonMasOrdenarPlatoVC;
@synthesize labelNumeroOrdenarPlatoVC;

//Se asigna el valor desde la otra clase ElegirPlatoPedidoCollectionViewController
@synthesize nombreOrdenarPlatoVC;
@synthesize precioOrdenarPlatoVC;
@synthesize descripcionOrdenarPlatoVC;

int numOrdenarPlatoVC = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *descripcionTxtRelleno = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur mattis purus nec elementum congue. Nunc suscipit massa non est posuere, quis ultricies turpis volutpat. Sed libero ante, vehicula eget enim rutrum, pretium sodales tellus. Donec blandit mollis est, vitae vestibulum nisl lobortis sit amet. Duis euismod congue sollicitudin. Nullam imperdiet nibh in risus ultrices aliquet sed a odio. Ut id arcu ac felis porttitor lacinia at at dui. Integer fermentum cursus interdum.";
     
     
     //Mostrando la informacion por pantalla
     labelNumeroOrdenarPlatoVC.text = [@(numOrdenarPlatoVC) stringValue] ;
     labelTituloOrdenarPlatoVC.text = nombreOrdenarPlatoVC;
     labelPrecioOrdenarPlatoVC.text = [NSString stringWithFormat: @"%.2f€", precioOrdenarPlatoVC];
     textViewDescripcionOrdenarPlatoVC.text = descripcionTxtRelleno;
    
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

- (IBAction)buttonMenosOrdenarPlatoVC:(id)sender {
    if (numOrdenarPlatoVC > 0){
        numOrdenarPlatoVC--;
        labelNumeroOrdenarPlatoVC.text = [@(numOrdenarPlatoVC) stringValue];
    }
}

- (IBAction)buttonMasOrdenarPlatoVC:(id)sender {
    if (numOrdenarPlatoVC < 10){
        numOrdenarPlatoVC++;
        labelNumeroOrdenarPlatoVC.text = [@(numOrdenarPlatoVC) stringValue];
    }
}


@end
