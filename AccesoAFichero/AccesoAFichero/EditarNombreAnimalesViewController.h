//
//  EditarNombreAnimalesViewController.h
//  AccesoAFichero
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditarNombreAnimalesViewController : UIViewController
@property long numberItem;
@property (weak, nonatomic) IBOutlet UILabel *labelNombreEditarNombreAnimalesVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldModificarEditarNombreAnimalesVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonAceptarEditarNombreAnimalesVC;
- (IBAction)buttonAceptarEditarNombreAnimalesVC:(id)sender;

@end
