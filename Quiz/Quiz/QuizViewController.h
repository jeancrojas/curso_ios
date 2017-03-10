//
//  QuizViewController.h
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonClasificacionGlobalQuizVC;
- (IBAction)buttonClasificacionGlobalQuizVC:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonRondaPreguntasQuizVC;
- (IBAction)buttonRondaPreguntasQuizVC:(id)sender;

@end
