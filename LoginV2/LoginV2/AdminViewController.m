//
//  AdminViewController.m
//  LoginV2
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AdminViewController.h"
#import "GestionUsuariosTableViewController.h"

@interface AdminViewController ()

@end

@implementation AdminViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.buttonUsuariosAdminVC setTitle:@"Usuarios" forState:UIControlStateNormal];
    
    [self.buttonProductosAdminVC setTitle:@"Productos" forState:UIControlStateNormal];
    
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

- (IBAction)buttonUsuariosAdminVC:(id)sender {
    
    GestionUsuariosTableViewController *vistaGestionUsuariosTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idGestionUsuariosTVC"];
    
    [self showViewController:vistaGestionUsuariosTVC sender:nil];
    
}
- (IBAction)buttonProductosAdminVC:(id)sender {
}
@end
