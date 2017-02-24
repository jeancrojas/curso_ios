//
//  VistaViewController.m
//  LabelPorCodigo
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "VistaViewController.h"

@interface VistaViewController ()

@end

@implementation VistaViewController

UILabel *label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    label = [[UILabel alloc]initWithFrame:CGRectMake(90, 150, 200, 200)];
    [self.buttonEliminarLabel setTitle:@"Eliminar Label" forState:UIControlStateNormal];
    
    [label setText:@"Jean Carlos"];
    [label setFont:[UIFont fontWithName:@"Arial" size:20]];
    [label setTextColor:[UIColor greenColor]];
    
    //Añadir label a la Vista
    [self.view addSubview:label];
    
    
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

- (IBAction)buttonEliminarLabel:(id)sender {
    //Elimiar label de la vista
    [label removeFromSuperview];
    NSLog(@"Has pulsado el botón");
    
}
@end
