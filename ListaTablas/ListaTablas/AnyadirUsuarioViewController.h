//
//  AnyadirUsuarioViewController.h
//  ListaTablas
//
//  Created by cice on 28/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnyadirUsuarioViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelNombre;
@property (weak, nonatomic) IBOutlet UILabel *labelTelefono;
@property (weak, nonatomic) IBOutlet UILabel *labelEmail;
@property (weak, nonatomic) IBOutlet UIButton *buttonAnyadir;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNombre;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTelefono;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;
- (IBAction)buttonAnyadir:(id)sender;

@end
