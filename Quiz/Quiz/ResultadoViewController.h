//
//  ResultadoViewController.h
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultadoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelPuntuacionResultadoVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonAceptarResultadoVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldIntroducirAliasResultadoVC;
@property int puntuacionResultadoVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldAliasResultadoVC;
- (IBAction)buttonAceptarResultadoVC:(id)sender;
@end
