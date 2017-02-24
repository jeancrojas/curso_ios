//
//  Pelicula1ViewController.m
//  labelImageConexionVentanas
//
//  Created by cice on 23/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Pelicula1ViewController.h"

@interface Pelicula1ViewController ()

@end

@implementation Pelicula1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pelicula1Titulo.text = @"Cadena Perpetua";
    self.pelicula1Imagen.image = [UIImage imageNamed:@"cadenaPerpetua.jpg" ];
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
