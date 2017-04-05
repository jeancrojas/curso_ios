//
//  MostrarImporteViewController.m
//  ProjectRestaurante
//
//  Created by cice on 5/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MostrarImporteViewController.h"
#import "AppDelegate.h"
#import "Mesa.h"

@interface MostrarImporteViewController ()

@end

@implementation MostrarImporteViewController
@synthesize labelTituloMostrarImporteVC;
@synthesize buttonContinuarMostrarImporteVC;
@synthesize buttonPagarMostrarImporteVC;
@synthesize labelImporteMostrarImporteVC;

AppDelegate *appDelegateMostrarImporteVC;
NSMutableArray *listaMesaMostrarImporteVC;
Mesa *mesaMostrarImporteVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegateMostrarImporteVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    listaMesaMostrarImporteVC = appDelegateMostrarImporteVC.listaMesa;
    labelTituloMostrarImporteVC.text =[NSString stringWithFormat:@"Mesa %d", appDelegateMostrarImporteVC.mesaSeleccionada];
    
     mesaMostrarImporteVC=[listaMesaMostrarImporteVC objectAtIndex:appDelegateMostrarImporteVC.mesaSeleccionada-1];
    
    labelImporteMostrarImporteVC.text = [NSString stringWithFormat:@"%.2f €", mesaMostrarImporteVC.precio];
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

- (IBAction)buttonPagarMostrarImporteVC:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    mesaMostrarImporteVC.precio = 0.0;
}
- (IBAction)buttonContinuarMostrarImporteVC:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
