//
//  Ventana3ViewController.m
//  InteraccionVentanas
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Ventana3ViewController.h"

@interface Ventana3ViewController ()

@end

@implementation Ventana3ViewController

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

- (IBAction)buttonCambiarVentana3VC:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
@end
