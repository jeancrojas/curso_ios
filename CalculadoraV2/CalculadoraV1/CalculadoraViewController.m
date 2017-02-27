//
//  CalculadoraViewController.m
//  CalculadoraV1
//
//  Created by cice on 27/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "CalculadoraViewController.h"

@interface CalculadoraViewController ()

@end

@implementation CalculadoraViewController

NSString* signo;
int op1;
int op2;
int resultado=0;
Boolean valor1Agregado= false;
Boolean valor2Agregado = false;
Boolean valorSignoAgregado = false;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.labelTitulo.text = @"Calculadora";
    self.labelMostrarResultado.text = @"";
    [self.button0 setTitle: @"0" forState: UIControlStateNormal];
    [self.button1 setTitle: @"1" forState: UIControlStateNormal];
    [self.button2 setTitle: @"2" forState: UIControlStateNormal];
    [self.button3 setTitle: @"3" forState: UIControlStateNormal];
    [self.button4 setTitle: @"4" forState: UIControlStateNormal];
    [self.button5 setTitle: @"5" forState: UIControlStateNormal];
    [self.button6 setTitle: @"6" forState: UIControlStateNormal];
    [self.button7 setTitle: @"7" forState: UIControlStateNormal];
    [self.button8 setTitle: @"8" forState: UIControlStateNormal];
    [self.button9 setTitle: @"9" forState: UIControlStateNormal];

    [self.buttonSignoMas setTitle: @"+" forState: UIControlStateNormal];
    [self.buttonSignoMenos setTitle: @"-" forState: UIControlStateNormal];
    [self.buttonSignoMultiplicacion setTitle: @"*" forState: UIControlStateNormal];
    [self.buttonSignoDivision setTitle: @"/" forState: UIControlStateNormal];
    
    [self.buttonResultado setTitle: @"=" forState: UIControlStateNormal];
    [self.buttonReset setTitle: @"Reset" forState: UIControlStateNormal];
    
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

- (IBAction)button1:(id)sender {
    
    if(!valor1Agregado ){
        op1 = 1;
        self.labelMostrarResultado.text = @"1";
        valor1Agregado = true;
        
    } else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@1",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op1 = [obtenido intValue];
        
    } else if (valorSignoAgregado && !valor2Agregado){
        op2 = 1;
        self.labelMostrarResultado.text = @"1";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@1",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
    
}
- (IBAction)button2:(id)sender {
    if(!valor1Agregado){
        op1 = 2;
        self.labelMostrarResultado.text = @"2";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@2",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido ;
        op1 = [obtenido intValue];
        
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 2;
        self.labelMostrarResultado.text = @"2";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@2",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button3:(id)sender {
    if(!valor1Agregado){
        op1 = 3;
        self.labelMostrarResultado.text = @"3";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@3",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido ;
        op1 = [obtenido intValue];
        
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 3;
        self.labelMostrarResultado.text = @"3";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@3",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button4:(id)sender {
    if(!valor1Agregado){
        op1 = 4;
        self.labelMostrarResultado.text = @"4";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@4",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido ;
        op1 = [obtenido intValue];
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 4;
        self.labelMostrarResultado.text = @"4";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@4",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button5:(id)sender {
    if(!valor1Agregado){
        op1 = 5;
        self.labelMostrarResultado.text = @"5";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@5",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido;
        op1 = [obtenido intValue];
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 5;
        self.labelMostrarResultado.text = @"5";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@5",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button6:(id)sender {
    if(!valor1Agregado){
        op1 = 6;
        self.labelMostrarResultado.text = @"6";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@6",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido ;
        op1 = [obtenido intValue];
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 6;
        self.labelMostrarResultado.text = @"6";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@6",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button7:(id)sender {
    if(!valor1Agregado){
        op1 = 7;
        self.labelMostrarResultado.text = @"7";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@7",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido;
        op1 = [obtenido intValue];
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 7;
        self.labelMostrarResultado.text = @"7";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@7",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button8:(id)sender {
    if(!valor1Agregado){
        op1 = 8;
        self.labelMostrarResultado.text = @"8";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@8",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido;
        op1 = [obtenido intValue];
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 8;
        self.labelMostrarResultado.text = @"8";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@8",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button9:(id)sender {
    if(!valor1Agregado){
        op1 = 9;
        self.labelMostrarResultado.text = @"9";
        valor1Agregado = true;
        
    }else if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@9",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido ;
        op1 = [obtenido intValue];
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 9;
        self.labelMostrarResultado.text = @"9";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@9",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)button0:(id)sender {
    if (valor1Agregado && !valorSignoAgregado){
        NSString* obtenido = [NSString stringWithFormat:@"%@0",self.labelMostrarResultado.text];
        self.labelMostrarResultado.text = obtenido ;
        op1 = [obtenido intValue];
    }else if (valorSignoAgregado && !valor2Agregado){
        op2 = 0;
        self.labelMostrarResultado.text = @"0";
        valor2Agregado = true;
    }else if (valor2Agregado && valorSignoAgregado){
        NSString* obtenido =  [NSString stringWithFormat:@"%@0",self.labelMostrarResultado.text];
        
        self.labelMostrarResultado.text = obtenido;
        op2 = [obtenido intValue];
    }
}
- (IBAction)buttonSignoMas:(id)sender {
    if (!valorSignoAgregado) {
        signo = @"+";
        valorSignoAgregado = true;
    }else{
        [self mostrarResultado];
        signo = @"+";
    }
    
}
- (IBAction)buttonSignoMenos:(id)sender {
    if (!valorSignoAgregado) {
        signo = @"-";
        valorSignoAgregado = true;
    } else {
        [self mostrarResultado];
        signo = @"-";
    }
}
- (IBAction)buttonSignoMultiplicacion:(id)sender {
    
    if (!valorSignoAgregado) {
        signo = @"*";
        valorSignoAgregado = true;
    } else{
        [self mostrarResultado];
        signo = @"*";
    }
    
}
- (IBAction)buttonSignoDivision:(id)sender {
    if (!valorSignoAgregado) {
        signo = @"/";
        valorSignoAgregado = true;
    } else {
        [self mostrarResultado];
        signo = @"/";
    }
}
- (IBAction)buttonResultado:(id)sender {
    if(valor1Agregado && valor2Agregado && valorSignoAgregado){
        
        if ([signo isEqualToString:@"+"])
            resultado = op1+op2;
        
        if ([signo isEqualToString:@"-"])
            resultado = op1-op2;
        
        if ([signo isEqualToString:@"*"])
            resultado = op1*op2;
        
        if ([signo isEqualToString:@"/"])
            resultado = op1/op2;
        
        self.labelMostrarResultado.text = [NSString stringWithFormat: @"%d",resultado];
    }
}
- (IBAction)buttonReset:(id)sender {
    signo = @"";
    op1 = 0;
    op2 = 0;
    self.labelMostrarResultado.text = @"";
    valor1Agregado= false;
    valor2Agregado = false;
    valorSignoAgregado = false;
}

- (void) mostrarResultado {
    
    if ([signo isEqualToString:@"+"])
        resultado = op1+op2;
    
    if ([signo isEqualToString:@"-"])
        resultado = op1-op2;
    
    if ([signo isEqualToString:@"*"])
        resultado = op1*op2;
    
    if ([signo isEqualToString:@"/"])
        resultado = op1/op2;
    
    self.labelMostrarResultado.text = [NSString stringWithFormat: @"%d",resultado];
    valor2Agregado = false;
    op1 = resultado;
}

@end
