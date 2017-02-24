//
//  pantallaViewController.m
//  textoPantalla
//
//  Created by cice on 23/2/17.
//  Copyright © 2017 aaa. All rights reserved.
//

#import "pantallaViewController.h"

@interface pantallaViewController ()

@end

@implementation pantallaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
  
    
    // Label pregunta
    self.pregunta.text = @"¿como te llamas?";
  

    // botones
    [self.boton setTitle:@"Responder" forState:UIControlStateNormal];
    [self.reset setTitle:@"Resetear" forState:UIControlStateNormal];

    // pregunta 2
    self.pregunta2.text = @"¿donde vives?";
    
    // pregunta 3
    self.pregunt3.text = @"edad";


    // añadido, declaro un string para concatenar la respuesta con texto
    NSString *texto;
    texto = [NSString stringWithFormat:@"Me llamo %@", self.respuesta.text];

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

- (IBAction)boton:(id)sender {
    
    // cargar salida con texto introducido
    self.salida.text = self.respuesta.text;
 //   self.salida.text = texto;
    self.salida2.text = self.respuesta2.text;
    self.salida3.text = self.respuesta3.text;
}
- (IBAction)reset:(UIButton *)sender {
    self.salida.text = @" ";
    self.salida2.text = @" ";
    self.salida3.text = @" ";
    self.respuesta.text = @" ";
    self.respuesta2.text = @" ";
    self.respuesta3.text = @" ";}
@end
