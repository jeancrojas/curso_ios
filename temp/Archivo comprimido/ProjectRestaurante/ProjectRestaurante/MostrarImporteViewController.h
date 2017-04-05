//
//  MostrarImporteViewController.h
//  ProjectRestaurante
//
//  Created by cice on 5/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MostrarImporteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelTituloMostrarImporteVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonPagarMostrarImporteVC;
- (IBAction)buttonPagarMostrarImporteVC:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonContinuarMostrarImporteVC;
- (IBAction)buttonContinuarMostrarImporteVC:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelImporteMostrarImporteVC;


@end
