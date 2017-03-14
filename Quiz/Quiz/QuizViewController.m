//
//  QuizViewController.m
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "QuizViewController.h"
#import "JugarViewController.h"
#import "ClasificacionGlobalTableViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

@synthesize buttonRondaPreguntasQuizVC;
@synthesize buttonClasificacionGlobalQuizVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [buttonClasificacionGlobalQuizVC setTitle:@"Clasificación global" forState: UIControlStateNormal];
    [buttonRondaPreguntasQuizVC setTitle:@"Empezar ronda de preguntas" forState: UIControlStateNormal];
    
    
    
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

- (IBAction)buttonClasificacionGlobalQuizVC:(id)sender {
    ClasificacionGlobalTableViewController *vistaClasificacionGlobalTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idClasificacionGlobalTVC"];
    [self showViewController:vistaClasificacionGlobalTVC sender:nil];
}
- (IBAction)buttonRondaPreguntasQuizVC:(id)sender {
    JugarViewController *vistaJugarVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idJugarVC" ];
    [self showViewController:vistaJugarVC sender:nil];
    
}
@end
