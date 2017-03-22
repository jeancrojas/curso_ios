//
//  AnyadirContactoViewController.h
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnyadirContactoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldNombreAnyadirContactoVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTelefonoAnyadirContactoVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDireccionAnyadirContactoVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonAnyadirAnyadirContactoVC;
- (IBAction)buttonAnyadirAnyadirContactoVC:(id)sender;

@end
