//
//  ContadorViewController.h
//  Contador
//
//  Created by cice on 24/2/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContadorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldNumero;
- (IBAction)buttonMas:(id)sender;
- (IBAction)buttonMenos:(id)sender;
- (IBAction)buttonReset:(id)sender;


@end
