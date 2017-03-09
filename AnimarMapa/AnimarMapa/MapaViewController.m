//
//  MapaViewController.m
//  AnimarMapa
//
//  Created by cice on 9/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MapaViewController.h"

@interface MapaViewController ()

@end

@implementation MapaViewController
@synthesize mapViewMapaVC;
@synthesize labelTituloMapaVC;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
    CLLocationCoordinate2D pointLocation;
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    //MKAnnotationView
    pointLocation.latitude = 38.915636;
    pointLocation.longitude = -6.338563;
    
    
    point.coordinate = pointLocation;
    point.title =@"Aquí toy";
    point.subtitle = @"Me has pillado";
    
    [mapViewMapaVC addAnnotation:point];
    
    //UIImage *miIcono = [UIImage imageNamed:@"penguinmario.png"];
    
    */
    
    [super viewDidLoad];
    mapViewMapaVC.delegate = self;
    mapViewMapaVC.mapType = MKMapTypeStandard;
    mapViewMapaVC.showsUserLocation = YES;
    
    MKPointAnnotation *myAnnotation = [[MKPointAnnotation alloc] init];
    myAnnotation.coordinate = CLLocationCoordinate2DMake(38.915636, -6.338563);
    myAnnotation.title = @"Matthews Pizza";
    myAnnotation.subtitle = @"Best Pizza in Town";
    [mapViewMapaVC addAnnotation:myAnnotation];
    
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
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Disclosure Pressed" message:@"Click Cancel to Go Back" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    
    UIAlertController *alertController = [[UIAlertController alloc]init];
    alertController.title = @"Disclosure Pressed";
    alertController.message = @"Click Cancel to Go Back";
    //alertController.preferredStyle =
    
    UIAlertAction *yesAlert = [[UIAlertAction alloc]init];
    
    
    [alertView show];
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
            pinView.image = [UIImage imageNamed:@"star.png"];
            pinView.calloutOffset = CGPointMake(0, 32);
            
            // Add a detail disclosure button to the callout.
            UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
            pinView.rightCalloutAccessoryView = rightButton;
            
            // Add an image to the left callout.
            UIImageView *iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"iconmario32.png"]];
            pinView.leftCalloutAccessoryView = iconView;
        } else {
            pinView.annotation = annotation;
        }
        return pinView;
    }
    return nil;
}



- (void) mapView:(MKMapView *) mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    [mapViewMapaVC setCenterCoordinate:userLocation.coordinate animated:YES];
}

- (IBAction)zoomToCurrentLocation:(UIBarButtonItem *)sender {
    float spanX = 0.00725;
    float spanY = 0.00725;
    MKCoordinateRegion region;
    region.center.latitude = mapViewMapaVC.userLocation.coordinate.latitude;
    region.center.longitude = mapViewMapaVC.userLocation.coordinate.longitude;
    region.span.latitudeDelta = spanX;
    region.span.longitudeDelta = spanY;
    [mapViewMapaVC setRegion:region animated:YES];
}

@end
