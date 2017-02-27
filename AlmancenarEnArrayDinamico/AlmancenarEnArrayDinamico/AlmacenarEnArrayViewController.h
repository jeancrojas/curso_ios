//
//  AlmacenarEnArrayViewController.h
//  AlmancenarEnArrayDinamico
//
//  Created by cice on 27/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlmacenarEnArrayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNombre;
@property (weak, nonatomic) IBOutlet UIButton *buttonAnyadir;
@property (weak, nonatomic) IBOutlet UIButton *buttonMostrar;
- (IBAction)buttonAnyadir:(id)sender;
- (IBAction)buttonMostrar:(id)sender;

@end
