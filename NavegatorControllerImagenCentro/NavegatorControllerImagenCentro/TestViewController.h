//
//  TestViewController.h
//  NavegatorControllerImagenCentro
//
//  Created by cice on 17/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonSiguienteVentanaTestVC;
- (IBAction)buttonSiguienteVentanaTestVC:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *buttonItemCamara;
- (IBAction)buttonItemCamara:(id)sender;

@end
