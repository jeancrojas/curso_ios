//
//  MapaViewController.m
//  MiPosicionGPS
//
//  Created by cice on 9/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MapaViewController.h"
#import "MisPuntos.h"

@interface MapaViewController ()

@end

@implementation MapaViewController

CLLocationManager *locationManager;
CLLocationManager *destino;
@synthesize mapViewMapa;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CLLocationCoordinate2D pointLocation;
    //CLLocationCoordinate2D destinoPointLocation;
    locationManager = [[CLLocationManager alloc]init];
    destino = [[CLLocationManager alloc]init];
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    
    //Origen
    
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager requestWhenInUseAuthorization];
    
    [locationManager startUpdatingLocation];
    
    NSLog(@"Latitud %.8f \nLongitud %.8f",locationManager.location.coordinate.latitude,locationManager.location.coordinate.longitude);
    
    pointLocation.latitude = locationManager.location.coordinate.latitude;
    pointLocation.longitude = locationManager.location.coordinate.longitude;
    point.coordinate = pointLocation;
    point.title = @"Estoy aquí";
    point.subtitle = @":D";
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(pointLocation, 10000, 10000);
    
    
    //Destino, calcula el Origen y el destino pero no la muestra
    
    CLLocation *localizacionDestino =[ [CLLocation alloc] initWithLatitude:40.447054 longitude:-3.703955];
    
    
    CLLocationDistance distance = [locationManager.location distanceFromLocation:localizacionDestino ];
    
    NSLog (@"Distancia %.2f km", distance/1000);
    
    
    [mapViewMapa setRegion:viewRegion animated:YES];
    [mapViewMapa addAnnotation:point];
    
    
    
    
    //Las siguientes lineas son de uso independiente
    
    MisPuntos *misPuntos = [[MisPuntos alloc] inttMisPuntos:@"123" latitud:2.34 longitud:3.45];
    
    
    NSLog(@"Mis puntos: %@", misPuntos.nombre);
    
    
    
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
