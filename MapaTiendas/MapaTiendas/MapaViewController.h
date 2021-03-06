//
//  MapaViewController.h
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Tienda.h"

@interface MapaViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapViewMapaMapaVC;
@property Boolean tiendaSeleccionada;
@property NSMutableArray *listaTiendaMapaVC;
@property Tienda *objectTiendaSeleccionada;

@end
