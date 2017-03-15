//
//  InfoRestauranteViewController.h
//  InfoRestaurante
//
//  Created by cice on 15/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface InfoRestauranteViewController : UIViewController
@property int indiceRestaurante;
@property (weak, nonatomic) IBOutlet UILabel *labelTituloInfoRestauranteVC;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewImagenInfoRestauranteVC;
@property (weak, nonatomic) IBOutlet UITextView *textViewDescripcionInfoRestauranteVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonIrWebInfoRestauranteVC;
- (IBAction)buttonIrWebInfoRestauranteVC:(id)sender;

@end
