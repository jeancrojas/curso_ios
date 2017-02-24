//
//  Pelicula3ViewController.m
//  labelImageConexionVentanas
//
//  Created by cice on 23/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Pelicula3ViewController.h"

@interface Pelicula3ViewController ()

@end

@implementation Pelicula3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pelicula3Titulo.text = @"Intocable";
    self.pelicula3Imagen.image = [UIImage imageNamed:@"intocable.jpg" ];
    
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
