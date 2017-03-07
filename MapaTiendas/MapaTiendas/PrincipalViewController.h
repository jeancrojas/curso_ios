//
//  PrincipalViewController.h
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrincipalViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldCP;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTipo;
@property (weak, nonatomic) IBOutlet UIButton *buttonBuscarPrincipalVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonTodasPrincipalVC;
- (IBAction)buttonBuscarPrincipalVC:(id)sender;
- (IBAction)buttonTodasPrincipalVC:(id)sender;

@end
