//
//  ContactoViewController.m
//  InfoRestaurante
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ContactoViewController.h"

@interface ContactoViewController ()

@end

@implementation ContactoViewController

@synthesize textFieldNombreContactoVC;
@synthesize textFieldTelefonoContactoVC;
@synthesize textFieldCorreoContactoVC;
@synthesize buttonEnviarContactoVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [buttonEnviarContactoVC setTitle:@"Enviar" forState: UIControlStateNormal];
    textFieldNombreContactoVC.placeholder = @"nombre...";
    textFieldTelefonoContactoVC.placeholder = @"teléfono...";
    textFieldCorreoContactoVC.placeholder = @"correo...";
    
    // Do any additional setup after loading the view.
    
    
    
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

- (IBAction)buttonEnviarContactoVC:(id)sender {
    BOOL resultadoEnvio = [self enviarCorreo];
    
    if (resultadoEnvio)
        NSLog(@"Si, se envio correctamente.");
    else
        NSLog(@"No, se envio correctamente.");
    
}

-(BOOL)enviarCorreo{

    if (![MFMailComposeViewController canSendMail]) {
        NSLog(@"Mail services are not available.");
        return NO;
    }
    
    MFMailComposeViewController *composeVC = [[MFMailComposeViewController alloc] init];
    composeVC.mailComposeDelegate = self;
    
    // Configure the fields of the interface.
    [composeVC setToRecipients:@[@"address@example.com"]];
    [composeVC setSubject:@"Hello!"];
    [composeVC setMessageBody:@"Hello from California!" isHTML:NO];
    
    NSLog(@"Se envio correctamente tu correo: %ld", MFMailComposeResultSent);
    // Present the view controller modally.
    

    [self presentViewController:composeVC animated:YES completion:nil];
    
    return YES;
    
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    // Check the result or perform other tasks.
    
    // Dismiss the mail compose view controller.
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textFieldShoulReturn: (UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    [self animateTextField:textField up:YES];
}

-(void) textFieldDidEndEditing:(UITextField *)textField {
    [self animateTextField:textField up:NO];
}

-(void)animateTextField:(UITextField *)textField up:(BOOL)up{

    const int movementDistance = -150; //Indica cuando sube la pantalla
    const float movementDuration = 0.3f; //Indica la duracion del movimiento
    
    int movement = (up ? movementDistance : -movementDistance);
    
    [UIView beginAnimations:@"textFieldCorreoContactoVC" context:nil];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}



@end
