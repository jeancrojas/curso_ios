//
//  AccedoViewController.h
//  Login
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccedoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelSaludos;
@property (weak, nonatomic) IBOutlet UIButton *buttonEditarClave;
- (IBAction)buttonEditarClave:(id)sender;

@end
