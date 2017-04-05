//
//  tabBarViewController.m
//  ProjectRestaurante
//
//  Created by cice on 5/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "tabBarViewController.h"
#import "AppDelegate.h"
#import "MostrarImporteViewController.h"

@interface tabBarViewController ()

@end

@implementation tabBarViewController

AppDelegate *appDelegateTabBarVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegateTabBarVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    self.navigationItem.title = [NSString stringWithFormat:@"Mesa %d",appDelegateTabBarVC.mesaSeleccionada];
    //self.navigationItem.rightBarButtonItem = calcularTotalConsumo;
    
    
    //UIButtonTypeInfoLight
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    //[infoButton setTitle:@"Importe" forState:UIControlStateNormal];
    [infoButton addTarget:self action:@selector(buttonCalcularTotalConsumido:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:infoButton];
    //[[[self tabBarController] navigationItem] setRightBarButtonItem:infoButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonCalcularTotalConsumido:(id)sender {
    MostrarImporteViewController *vistaMostrarImporteVC = [self.storyboard instantiateViewControllerWithIdentifier: @"idMostrarImporteVC" ];
    [self showViewController:vistaMostrarImporteVC sender: nil];
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
