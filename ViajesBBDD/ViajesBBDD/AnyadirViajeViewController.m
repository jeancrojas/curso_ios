//
//  AnyadirViajeViewController.m
//  ViajesBBDD
//
//  Created by cice on 27/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AnyadirViajeViewController.h"

@interface AnyadirViajeViewController ()

@end

@implementation AnyadirViajeViewController

@synthesize textFieldLugarAnyadirViajeVC;
@synthesize textFieldDescripcionAnyadirViajeVC;
@synthesize textFieldPlazasAnyadirViajeVC;
@synthesize textFieldPrecioAnyadirViajeVC;
@synthesize buttonAnyadirViajeVC;
@synthesize buttonImagenAnyadirViajeVC;
@synthesize imagenViewImagenAnyadirViajeVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    textFieldLugarAnyadirViajeVC.placeholder = @"Introducir el lugar...";
    textFieldDescripcionAnyadirViajeVC.placeholder = @"Introducir la drescripción...";
    textFieldPlazasAnyadirViajeVC.placeholder = @"Introducir el número de plazas...";
    textFieldPrecioAnyadirViajeVC.placeholder = @"Introducir el precio...";
    
    [buttonAnyadirViajeVC setTitle:@"Añadir" forState: UIControlStateNormal];
    [buttonImagenAnyadirViajeVC setTitle:@"Añadir Imagen" forState: UIControlStateNormal];
    
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

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //You can retrieve the actual UIImage
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    //Or you can get the image url from AssetsLibrary
    NSURL *path = [info valueForKey:UIImagePickerControllerReferenceURL];
    
    
    NSLog(@"Bucle %@", info);
    
    
    NSLog(@"El nombre de la imagen es: %@ y la ruta es: %@",image.description , path.absoluteURL);
    imagenViewImagenAnyadirViajeVC.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)buttonAnyadirViajeVC:(id)sender {
}
- (IBAction)buttonImagenAnyadirViajeVC:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;
    [self presentViewController:imagePickerController animated:YES completion:nil];
    
}
@end
