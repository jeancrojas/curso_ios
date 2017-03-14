//
//  SliderViewController.h
//  SliderTest
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelOpacidadSliderVC;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewImagenSliderVC;
@property (weak, nonatomic) IBOutlet UISlider *sliderValorAlpaSliderVC;
- (IBAction)sliderValorAlpaSliderVC:(UISlider *)sender;

@end
