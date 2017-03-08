//
//  MapaViewController.m
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MapaViewController.h"
#import "AppDelegate.h"
#import "Tienda.h"

@interface MapaViewController ()

@end

@implementation MapaViewController

AppDelegate *appDelegateMapaVC;
@synthesize mapViewMapaMapaVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    appDelegateMapaVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
    Tienda *tienda = [[Tienda alloc]init];
    //NSMutableArray *listaTiendasMapaVC = appDelegateMapaVC.listaTiendas;
    
    CLLocationCoordinate2D pointLocation;
    pointLocation.latitude = 0;
    pointLocation.longitude = 0;
    MKPointAnnotation *point;
    
    

    
    if(!self.tiendaSeleccionada){
        
        self.listaTiendaMapaVC = appDelegateMapaVC.listaTiendas;
        
        for (int i=0; i < [self.listaTiendaMapaVC count]; i++) {
            tienda = (Tienda *) [self.listaTiendaMapaVC objectAtIndex:i];
            NSLog(@"\nNombre: %@ \nTipo: %d \nCódigo Postal: %d \nCoordenada X: %lf \nCoordenada Y: %lf ", tienda.nombre, tienda.tipo, tienda.cP, tienda.coordX, tienda.coordY);
            
            pointLocation.latitude = tienda.coordX;
            pointLocation.longitude = tienda.coordY;
            
            //Inicializar MKPointAnnotation
            point = [[MKPointAnnotation alloc]init];
            point.coordinate = pointLocation;
            point.title = tienda.nombre;
            point.subtitle = [NSString stringWithFormat: @"CP: %d, dedicada a: %d",tienda.cP,tienda.tipo];
            [mapViewMapaMapaVC addAnnotation:point];
        }
    } else {
        tienda = self.objectTiendaSeleccionada;
        pointLocation.latitude = tienda.coordX;
        pointLocation.longitude = tienda.coordY;
        
        point = [[MKPointAnnotation alloc]init];
        point.coordinate = pointLocation;
        point.title = tienda.nombre;
        point.subtitle = [NSString stringWithFormat: @"CP: %d, dedicada a: %d",tienda.cP,tienda.tipo];
        [mapViewMapaMapaVC addAnnotation:point];
        
    }
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(pointLocation, 25000, 25000);
    
    [mapViewMapaMapaVC setRegion:viewRegion animated: YES];
    //CLLocationCoordinate2D pointLocation;
    
    
    
    
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
