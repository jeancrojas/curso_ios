//
//  pantallaViewController.h
//  textoPantalla
//
//  Created by cice on 23/2/17.
//  Copyright © 2017 aaa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pantallaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *pregunta;
@property (weak, nonatomic) IBOutlet UILabel *salida;
@property (weak, nonatomic) IBOutlet UITextField *respuesta;
@property (weak, nonatomic) IBOutlet UIButton *boton;

- (IBAction)boton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *pregunta2;
@property (weak, nonatomic) IBOutlet UILabel *salida2;
@property (weak, nonatomic) IBOutlet UITextField *respuesta2;
@property (weak, nonatomic) IBOutlet UILabel *pregunt3;
@property (weak, nonatomic) IBOutlet UILabel *salida3;
@property (weak, nonatomic) IBOutlet UITextField *respuesta3;
@property (weak, nonatomic) IBOutlet UIButton *reset;
- (IBAction)reset:(UIButton *)sender;

@end
