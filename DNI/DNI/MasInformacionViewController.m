//
//  MasInformacionViewController.m
//  DNI
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MasInformacionViewController.h"

@interface MasInformacionViewController ()

@end

@implementation MasInformacionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.labelMasInformacion.text = @"Más Información";
    self.labelTelefono.text = @"Teléfono";
    self.labelEmail.text = @"Email";
    [self.buttonVolver setTitle:@"Volver" forState:UIControlStateNormal];
    
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

- (IBAction)buttonVolver:(id)sender {
}
@end
