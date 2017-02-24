//
//  Pelicula2ViewController.m
//  labelImageConexionVentanas
//
//  Created by cice on 23/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Pelicula2ViewController.h"

@interface Pelicula2ViewController ()

@end

@implementation Pelicula2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pelicula2Titulo.text = @"El Padrino";
    self.pelicula2Imagen.image =[UIImage imageNamed:@"elPadrino.jpg" ] ;
    
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
