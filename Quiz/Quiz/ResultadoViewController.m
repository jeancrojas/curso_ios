//
//  ResultadoViewController.m
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ResultadoViewController.h"

@interface ResultadoViewController ()

@end

@implementation ResultadoViewController

@synthesize buttonAceptarResultadoVC;
@synthesize labelPuntuacionResultadoVC;
@synthesize textFieldIntroducirAliasResultadoVC;
@synthesize puntuacionResultadoVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    textFieldIntroducirAliasResultadoVC.placeholder = @"Introducir alias";
    labelPuntuacionResultadoVC.text = [NSString stringWithFormat: @"Tu puntuación es: %d",puntuacionResultadoVC ];
    [buttonAceptarResultadoVC setTitle:@"Aceptar" forState: UIControlStateNormal];
    
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

@end
