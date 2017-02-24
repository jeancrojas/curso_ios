//
//  ContadorViewController.m
//  Contador
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ContadorViewController.h"

@interface ContadorViewController ()

@end

@implementation ContadorViewController
int numero = 0;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textFieldNumero.text = @"0";
    
    
    
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

- (IBAction)buttonMas:(id)sender {
    numero++;
    
    //Pasar de Int a String
    self.textFieldNumero.text = [NSString stringWithFormat:@"%d", numero];
}

- (IBAction)buttonMenos:(id)sender {
    if (numero > 0) {
        numero--;
        self.textFieldNumero.text = [NSString stringWithFormat:@"%d", numero];
    }
    
}

- (IBAction)buttonReset:(id)sender {
    numero = 0;
    self.textFieldNumero.text = [NSString stringWithFormat:@"%d", numero];
}
@end
