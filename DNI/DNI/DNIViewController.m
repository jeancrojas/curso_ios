//
//  DNIViewController.m
//  DNI
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "DNIViewController.h"

@interface DNIViewController ()

@end

@implementation DNIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageViewFoto.image = [UIImage imageNamed:@"mariobros.jpg"];
    self.labelNombre.text = @"Nombre";
    self.labelApellido.text = @"Apellido";
    self.labelEdad.text = @"Edad";
    self.labelCiudad.text = @"Ciudad";
    
    [self.buttonMasInformacion setTitle:@"Más Info" forState: UIControlStateNormal];
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

- (IBAction)buttonMasInformacion:(id)sender {
}
@end
