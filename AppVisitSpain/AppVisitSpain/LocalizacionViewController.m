//
//  LocalizacionViewController.m
//  AppVisitSpain
//
//  Created by cice on 16/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "LocalizacionViewController.h"
#import "SWRevealViewController.h"
#import "WebViewController.h"

@interface LocalizacionViewController ()

@end

@implementation LocalizacionViewController

@synthesize mapViewMapaLocalizacionVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Agregar el botón
    UIButton *boton = [UIButton buttonWithType:UIButtonTypeCustom];
    [boton setFrame:CGRectMake(5.0, 5.0, 17, 17)];
    [boton setImage:[UIImage imageNamed:@"reveal-icon.png"] forState:UIControlStateNormal ];
    
    UIBarButtonItem *revealBoton = [[UIBarButtonItem alloc]initWithCustomView:boton];
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:revealBoton, nil];
    
    //Controlador SWReveal
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController){
        [boton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    
    //Mapa
    mapViewMapaLocalizacionVC.delegate = self;
    mapViewMapaLocalizacionVC.mapType = MKMapTypeStandard;
    mapViewMapaLocalizacionVC.showsUserLocation = YES;
    
    CLLocationCoordinate2D pointLocation;
    pointLocation.latitude = 40.770873;
    pointLocation.longitude = -4.067601;
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = pointLocation;
    point.title = @"Las Dehesas";
    point.subtitle = @"Las Dehesas de Cercedilla...";
    [mapViewMapaLocalizacionVC addAnnotation:point];
    
    
    
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

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    id <MKAnnotation> annotation = [view annotation];
    if ([annotation isKindOfClass:[MKPointAnnotation class]])
    {
        NSLog(@"Clicked Pizza Shop");
    }
    /*
    //UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Disclosure Pressed" message:@"Click Cancel to Go Back" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    
    
    UIAlertController *myAlertView = [[UIAlertController alloc] init];
    myAlertView.title = @"Disclosure Pressed";
    myAlertView.message = @"Click Cancel to Go Back";
    
    //[alertView show];
    [myAlertView show];
    */
    WebViewController *vistaWebVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idWebVC"];
    [self showViewController:vistaWebVC sender:nil];
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    // If it's the user location, just return nil.
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    // Handle any custom annotations.
    if ([annotation isKindOfClass:[MKPointAnnotation class]])
    {
        // Try to dequeue an existing pin view first.
        MKAnnotationView *pinView = (MKAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"CustomPinAnnotationView"];
        if (!pinView)
        {
            // If an existing pin view was not available, create one.
            pinView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPinAnnotationView"];
            pinView.canShowCallout = YES;
            pinView.image = [UIImage imageNamed:@"ic_my_location_48pt.png"];
            pinView.calloutOffset = CGPointMake(0, 32);
            
            // Add a detail disclosure button to the callout.
            UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
            pinView.rightCalloutAccessoryView = rightButton;
            
            // Add an image to the left callout.
            UIImageView *iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_my_location_48pt.png"]];
            pinView.leftCalloutAccessoryView = iconView;
        } else {
            pinView.annotation = annotation;
        }
        return pinView;
    }
    return nil;
}

- (IBAction)zoomToCurrentLocation:(UIBarButtonItem *)sender {
    float spanX = 0.00725;
    float spanY = 0.00725;
    MKCoordinateRegion region;
    region.center.latitude = mapViewMapaLocalizacionVC.userLocation.coordinate.latitude;
    region.center.longitude = mapViewMapaLocalizacionVC.userLocation.coordinate.longitude;
    region.span.latitudeDelta = spanX;
    region.span.longitudeDelta = spanY;
    [mapViewMapaLocalizacionVC setRegion:region animated:YES];
}


@end
