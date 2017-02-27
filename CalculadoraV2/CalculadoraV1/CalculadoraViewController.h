//
//  CalculadoraViewController.h
//  CalculadoraV1
//
//  Created by cice on 27/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculadoraViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;
@property (weak, nonatomic) IBOutlet UILabel *labelMostrarResultado;
@property (weak, nonatomic) IBOutlet UIButton *button1;
- (IBAction)button1:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button2;
- (IBAction)button2:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button3;
- (IBAction)button3:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button4;
- (IBAction)button4:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button5;
- (IBAction)button5:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button6;
- (IBAction)button6:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button7;
- (IBAction)button7:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button8;
- (IBAction)button8:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button9;
- (IBAction)button9:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button0;
- (IBAction)button0:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonSignoMas;
- (IBAction)buttonSignoMas:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonSignoMenos;
- (IBAction)buttonSignoMenos:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonSignoMultiplicacion;
- (IBAction)buttonSignoMultiplicacion:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonSignoDivision;
- (IBAction)buttonSignoDivision:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonResultado;
- (IBAction)buttonResultado:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonReset;
- (IBAction)buttonReset:(id)sender;

@end
