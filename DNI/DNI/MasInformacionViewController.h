//
//  MasInformacionViewController.h
//  DNI
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasInformacionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelMasInformacion;
@property (weak, nonatomic) IBOutlet UILabel *labelTelefono;
@property (weak, nonatomic) IBOutlet UILabel *labelEmail;
@property (weak, nonatomic) IBOutlet UITextView *textViewDescripcion;
@property (weak, nonatomic) IBOutlet UIButton *buttonVolver;
- (IBAction)buttonVolver:(id)sender;



@end
