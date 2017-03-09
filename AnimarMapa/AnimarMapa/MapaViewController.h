//
//  MapaViewController.h
//  AnimarMapa
//
//  Created by cice on 9/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapaViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelTituloMapaVC;
@property (weak, nonatomic) IBOutlet MKMapView *mapViewMapaVC;

@end
