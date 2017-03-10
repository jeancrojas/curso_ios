//
//  JugarViewController.h
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JugarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textViewPreguntaJugarVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRespuestaJugarVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonSiguienterPreguntaJugarVC;
- (IBAction)buttonSiguienterPreguntaJugarVC:(id)sender;

@end
