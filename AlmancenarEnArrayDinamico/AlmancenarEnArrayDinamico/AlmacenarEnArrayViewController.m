//
//  AlmacenarEnArrayViewController.m
//  AlmancenarEnArrayDinamico
//
//  Created by cice on 27/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AlmacenarEnArrayViewController.h"

@interface AlmacenarEnArrayViewController ()

@end

@implementation AlmacenarEnArrayViewController

NSMutableArray *listaNombres;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.labelTitulo.text = @"Nombres";
    
    [self.buttonAnyadir setTitle:@"Añadir" forState: UIControlStateNormal];
    [self.buttonMostrar setTitle:@"Mostrar" forState: UIControlStateNormal];
    listaNombres = [[NSMutableArray alloc]init];
    
    
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

- (IBAction)buttonAnyadir:(id)sender {
    [listaNombres addObject: self.textFieldNombre.text];
    self.textFieldNombre.text = @"";
    
    
    
}

- (IBAction)buttonMostrar:(id)sender {
    for (int i=0; i < [listaNombres count]; i++) {
            NSLog( @"%@", listaNombres[i] );
    }
}


@end
