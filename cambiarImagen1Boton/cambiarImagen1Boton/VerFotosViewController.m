//
//  VerFotosViewController.m
//  cambiarImagen1Boton
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "VerFotosViewController.h"

@interface VerFotosViewController ()

@end

@implementation VerFotosViewController
    int nFoto=0;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageViewFoto.image = [UIImage imageNamed:@"mariobros1.png"];
    [self.buttonCambiarImagen setTitle:@"Cambiar Imagen" forState:UIControlStateNormal ];
    
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

- (IBAction)buttonCambiarImagen:(id)sender {
    
    NSArray *fotos;
    
    fotos = [NSArray arrayWithObjects:@"mariobros1.png", @"mariobros2.png", @"mariobros3.png", nil];
    
    
    //[fotos objectAtIndex:0];
    
    
    if (nFoto < 2) {
        nFoto++;
        self.imageViewFoto.image = [UIImage imageNamed:fotos[nFoto] ];
    } else {
        nFoto = 0;
        self.imageViewFoto.image = [UIImage imageNamed:fotos[nFoto] ];
    }
    
    NSLog(@"%@", fotos[nFoto] );

    
}

@end
