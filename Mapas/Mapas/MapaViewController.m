//
//  MapaViewController.m
//  Mapas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MapaViewController.h"

@interface MapaViewController ()

@end

@implementation MapaViewController
@synthesize mapViewMap;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
    
    //Añadimos las coordenadas del punto donde queremos centrar el mapa
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 40.293904;
    zoomLocation.longitude = -3.745462;
    
    //Añadimos zoom y valores de distancia
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance( zoomLocation, 1000, 1000);
    
     //Mostramos el mapa
     [mapViewMap setRegion:viewRegion animated:YES];
    */
    CLLocationCoordinate2D pointLocation;
    pointLocation.latitude = 40.293904;
    pointLocation.longitude = -3.745462;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(pointLocation, 1000, 1000);
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = pointLocation;
    point.title = @"TIC Getafe";
    point.subtitle = @"Madrid";
    
    [mapViewMap setRegion:viewRegion animated:YES];
    [mapViewMap addAnnotation:point];
    
    
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
