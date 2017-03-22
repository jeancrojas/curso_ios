//
//  LoginViewController.h
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldUserLoginVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassLoginVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonValidarLoginVC;
- (IBAction)buttonValidarLoginVC:(id)sender;

@end
