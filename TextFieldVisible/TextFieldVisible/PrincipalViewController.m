//
//  PrincipalViewController.m
//  TextFieldVisible
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

@synthesize textFieldNombre;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    textFieldNombre.placeholder = @"Nombre...";
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
- (BOOL)textFieldShoulReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    [self animateTextField:textField up:YES];
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    [self animateTextField:textField up:NO];
}


-(void)animateTextField:(UITextField *)textField up:(BOOL)up{
    const int movementDistance = -150;//Indica cuando sube la pantalla
    const float movementDuration = 0.3f;//Indica la duracion del movimiento
    
    int movement = (up ? movementDistance : -movementDistance);
    
    [UIView beginAnimations:@"textFieldNombre" context:nil];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}


@end
