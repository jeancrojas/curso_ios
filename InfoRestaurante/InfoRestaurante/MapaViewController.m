//
//  MapaViewController.m
//  InfoRestaurante
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MapaViewController.h"
#import "AppDelegate.h"
#import "Restaurante.h"

@interface MapaViewController ()

@end

@implementation MapaViewController
@synthesize mapViewMapaVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppDelegate *appDelegateMapaVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    NSMutableArray *listaDeRestaurantesMapaVC = appDelegateMapaVC.listaDeRestaurantes;
    
    
    
    CLLocationCoordinate2D pointLocation;
    //MKPointAnnotation *point;
    
    for (int i=0; i < [listaDeRestaurantesMapaVC count]; i++) {
        Restaurante *restauranteMapaVC = [listaDeRestaurantesMapaVC objectAtIndex:i];
        pointLocation.latitude = restauranteMapaVC.coordenadaLatitud;
        pointLocation.longitude = restauranteMapaVC.coordenadaLongitud;
        MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
        point.coordinate = pointLocation;
        point.title = restauranteMapaVC.nombre;
        point.subtitle = restauranteMapaVC.descripcion;
        [mapViewMapaVC addAnnotation:point];
    }
    
    
    
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
