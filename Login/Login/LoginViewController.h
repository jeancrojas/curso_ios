//
//  LoginViewController.h
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonAcceder;
@property (weak, nonatomic) IBOutlet UIButton *buttonRegistrar;
@property (weak, nonatomic) IBOutlet UITextField *textFieldUsuario;
@property (weak, nonatomic) IBOutlet UITextField *textFieldContrasenya;
- (IBAction)buttonAcceder:(id)sender;
- (IBAction)buttonRegistrar:(id)sender;

@end
