//
//  CompararCodigoViewController.h
//  EqualsStringCodigo
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompararCodigoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldCodigo;
@property (weak, nonatomic) IBOutlet UIButton *buttonAceptar;
@property (weak, nonatomic) IBOutlet UILabel *labelResultado;
- (IBAction)buttonAceptar:(id)sender;

@end
