//
//  AnyadirViajeViewController.h
//  ViajesBBDD
//
//  Created by cice on 27/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
//@interface AnyadirViajeViewController : UIViewController <UIImagePickerControllerDelegate>
@interface AnyadirViajeViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textFieldLugarAnyadirViajeVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDescripcionAnyadirViajeVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPlazasAnyadirViajeVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPrecioAnyadirViajeVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonAnyadirViajeVC;
- (IBAction)buttonAnyadirViajeVC:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonImagenAnyadirViajeVC;
- (IBAction)buttonImagenAnyadirViajeVC:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imagenViewImagenAnyadirViajeVC;

@end
