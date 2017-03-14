//
//  SliderViewController.m
//  SliderTest
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "SliderViewController.h"

@interface SliderViewController ()

@end

@implementation SliderViewController

@synthesize labelOpacidadSliderVC;
@synthesize imageViewImagenSliderVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    labelOpacidadSliderVC.text = @"0%";
    imageViewImagenSliderVC.image = [UIImage imageNamed:@"mariobros.jpg"];
    
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

- (IBAction)sliderValorAlpaSliderVC:(UISlider *)sender {
    labelOpacidadSliderVC.text = [NSString stringWithFormat:@"%f",sender.value*100];
    imageViewImagenSliderVC.alpha = sender.value;
}
@end
