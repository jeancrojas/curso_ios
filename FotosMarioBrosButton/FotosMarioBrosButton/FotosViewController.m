//
//  FotosViewController.m
//  FotosMarioBrosButton
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "FotosViewController.h"

@interface FotosViewController ()

@end

@implementation FotosViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.labelTitulo.text = @"Fotos Mario Bros";
    
    
    [self.buttonFoto1 setTitle:@"Foto 1" forState:UIControlStateNormal];
    [self.buttonFoto2 setTitle:@"Foto 2" forState:UIControlStateNormal];
    [self.buttonFoto3 setTitle:@"Foto 3" forState:UIControlStateNormal];
    
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

- (IBAction)buttonFoto1:(id)sender {
    self.imageViewFoto.image = [UIImage imageNamed:@"mariobros1.png"];
    
    
}
- (IBAction)buttonFoto2:(id)sender {
    self.imageViewFoto.image = [UIImage imageNamed:@"mariobros2.png"];
    
}
- (IBAction)buttonFoto3:(id)sender {
    self.imageViewFoto.image = [UIImage imageNamed:@"mariobros3.png"];
}
@end
