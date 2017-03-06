//
//  AnyadirNombreAnimalViewController.m
//  AccesoAFichero
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AnyadirNombreAnimalViewController.h"
#import "AppDelegate.h"

@interface AnyadirNombreAnimalViewController ()

@end

@implementation AnyadirNombreAnimalViewController

AppDelegate *appDelegateAnyadirNombreAnimalVC;
NSMutableArray *listaArrayAnyadirNombreAnimalVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    appDelegateAnyadirNombreAnimalVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    [self.buttonAnyadirAnyadirNombreAnimalVC setTitle:@"Añadir" forState: UIControlStateNormal];
    listaArrayAnyadirNombreAnimalVC = appDelegateAnyadirNombreAnimalVC.listaAnimales;
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

- (IBAction)buttonAnyadirAnyadirNombreAnimalVC:(id)sender {
    [appDelegateAnyadirNombreAnimalVC.listaAnimales addObject: self.textFieldNombreAnyadirNombreAnimalVC.text];
    
    [listaArrayAnyadirNombreAnimalVC writeToFile:appDelegateAnyadirNombreAnimalVC.youArrayFileName atomically:YES];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
