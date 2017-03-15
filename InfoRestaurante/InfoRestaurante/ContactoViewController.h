//
//  ContactoViewController.h
//  InfoRestaurante
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ContactoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldNombreContactoVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTelefonoContactoVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCorreoContactoVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonEnviarContactoVC;
- (IBAction)buttonEnviarContactoVC:(id)sender;

@end
