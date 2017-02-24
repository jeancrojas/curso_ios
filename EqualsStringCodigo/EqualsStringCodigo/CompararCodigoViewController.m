//
//  CompararCodigoViewController.m
//  EqualsStringCodigo
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "CompararCodigoViewController.h"

@interface CompararCodigoViewController ()

@end

@implementation CompararCodigoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
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

- (IBAction)buttonAceptar:(id)sender {
    NSString *codigoIntroducido = self.textFieldCodigo.text;
    //self.textFieldCodigo;
    
    if ( [codigoIntroducido isEqualToString:@"123456789"] ) {
        self.labelResultado.text = @"Correcto";
    } else {
        self.labelResultado.text = @"Incorrecto";
    }
    
    NSLog(@"Se ha introducido el siguiente código: %@", codigoIntroducido);
    
    
    
}
@end
