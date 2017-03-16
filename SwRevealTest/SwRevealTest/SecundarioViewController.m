//
//  SecundarioViewController.m
//  SwRevealTest
//
//  Created by cice on 16/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "SecundarioViewController.h"
#import "SWRevealViewController.h"

@interface SecundarioViewController ()

@end

@implementation SecundarioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Agregar el botón
    UIButton *boton = [UIButton buttonWithType:UIButtonTypeCustom];
    [boton setFrame:CGRectMake(5.0, 5.0, 17, 17)];
    [boton setImage:[UIImage imageNamed:@"reveal-icon.png"] forState:UIControlStateNormal ];
    
    UIBarButtonItem *revealBoton = [[UIBarButtonItem alloc]initWithCustomView:boton];
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:revealBoton, nil];
    
    //Controlador SWReveal
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController){
        [boton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
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

@end
