//
//  LocalizacionViewController.h
//  AppVisitSpain
//
//  Created by cice on 16/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface LocalizacionViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapViewMapaLocalizacionVC;

@end
