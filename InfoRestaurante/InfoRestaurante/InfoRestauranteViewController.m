//
//  InfoRestauranteViewController.m
//  InfoRestaurante
//
//  Created by cice on 15/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "InfoRestauranteViewController.h"
#import "AppDelegate.h"
#import "Restaurante.h"
#import "WebRestauranteViewController.h"

@interface InfoRestauranteViewController ()

@end

@implementation InfoRestauranteViewController
@synthesize indiceRestaurante;
@synthesize buttonIrWebInfoRestauranteVC;
@synthesize labelTituloInfoRestauranteVC;
@synthesize imageViewImagenInfoRestauranteVC;
@synthesize textViewDescripcionInfoRestauranteVC;
Restaurante *restauranteInfoRestauranteVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [buttonIrWebInfoRestauranteVC setTitle:@"Ir a la Web" forState:UIControlStateNormal];

    
    AppDelegate *appDelegateInfoRestauranteVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
    restauranteInfoRestauranteVC = [appDelegateInfoRestauranteVC.listaDeRestaurantes objectAtIndex:indiceRestaurante ];
    
    labelTituloInfoRestauranteVC.text = restauranteInfoRestauranteVC.nombre;

    imageViewImagenInfoRestauranteVC.image = [UIImage imageNamed: restauranteInfoRestauranteVC.nombreImagenRestaurante ];
    
    textViewDescripcionInfoRestauranteVC.text = restauranteInfoRestauranteVC.descripcion;
    

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

- (IBAction)buttonIrWebInfoRestauranteVC:(id)sender {
    
    WebRestauranteViewController *vistaWebRestauranteVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idWebRestauranteVC"];
    
    vistaWebRestauranteVC.indiceRestauranteWebRestauranteVC = indiceRestaurante;
    
    [self showViewController:vistaWebRestauranteVC sender:nil];
    
    /*
    
    NSURL *url = [NSURL URLWithString: restauranteInfoRestauranteVC.web];
    NSURLRequest *resquest = [NSURLRequest requestWithURL:url];
     */
}
@end
