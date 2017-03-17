//
//  TestViewController.m
//  NavegatorControllerImagenCentro
//
//  Created by cice on 17/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "TestViewController.h"
#import "SegundoViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGSize imageSize;
    
    imageSize = CGSizeMake(45, 46);
    
    UIImage *img = [UIImage imageNamed:@"penguinmario.png" ];
    
    UIGraphicsBeginImageContext( imageSize );
    [img drawInRect:CGRectMake(0,0,imageSize.width,imageSize.height)];
    UIImage* realfrontImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //[self.navigationController.navigationBar setBackgroundImage: realfrontImage  forBarMetrics:UIBarMetricsDefault];
    
    
    
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:realfrontImage];
    
    
    
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

- (IBAction)buttonSiguienteVentanaTestVC:(id)sender {
    
    SegundoViewController *vistaSegundoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idSegundoVC"];
    
    [self showViewController:vistaSegundoVC sender:nil];
    
}
- (IBAction)buttonItemCamara:(id)sender {
    
    NSLog(@"Sonrie :D");
}
@end
