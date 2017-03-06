//
//  EditarNombreAnimalesViewController.m
//  AccesoAFichero
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "EditarNombreAnimalesViewController.h"
#import "AppDelegate.h"

@interface EditarNombreAnimalesViewController ()

@end

@implementation EditarNombreAnimalesViewController

AppDelegate *appDelegateEditarNombreAnimalesVC;

//Para tratar de manera mas comoda los atributos de AppDelegate
NSString *nombreArchivoEditarNombreAnimalesVC;
NSMutableArray *listaAnimalesEditarNombreAnimalesVC;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textFieldModificarEditarNombreAnimalesVC.placeholder = @"Modificar...";
    
    [self.buttonAceptarEditarNombreAnimalesVC setTitle:@"Aplicar" forState: UIControlStateNormal];
    
    NSLog(@"Has recibido el siguiente numero de item: %ld",self.numberItem );
    appDelegateEditarNombreAnimalesVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
    listaAnimalesEditarNombreAnimalesVC = appDelegateEditarNombreAnimalesVC.listaAnimales;
    nombreArchivoEditarNombreAnimalesVC = appDelegateEditarNombreAnimalesVC.youArrayFileName;
    
    self.labelNombreEditarNombreAnimalesVC.text = [listaAnimalesEditarNombreAnimalesVC objectAtIndex:self.numberItem];
    
    
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

- (IBAction)buttonAceptarEditarNombreAnimalesVC:(id)sender {
    
    NSString *nombreAnimalIntroducido = self.textFieldModificarEditarNombreAnimalesVC.text;
    [listaAnimalesEditarNombreAnimalesVC replaceObjectAtIndex:self.numberItem withObject:nombreAnimalIntroducido ];
    
    [listaAnimalesEditarNombreAnimalesVC writeToFile: nombreArchivoEditarNombreAnimalesVC atomically:YES];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
@end
