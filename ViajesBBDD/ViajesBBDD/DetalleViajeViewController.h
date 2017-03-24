//
//  DetalleViajeViewController.h
//  ViajesBBDD
//
//  Created by cice on 23/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalleViajeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelTituloDetalleViajVC;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewImagenDetalleViajeVC;
@property (weak, nonatomic) IBOutlet UITextView *textViewDescripcionDetalleViajeVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonReservarDetalleViajeVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonCancelarDetalleViajeVC;
- (IBAction)buttonReservarDetalleViajeVC:(id)sender;
- (IBAction)buttonCancelarDetalleViajeVC:(id)sender;

//Lo que recibo de la clase ViajesCVC

@property (nonatomic, assign) int idViajeDetalleViajeVC;
@property (nonatomic, retain) NSString *lugarDetalleViajeVC;
@property (nonatomic, retain) NSString *descripcionDetalleViajeVC;
@property (nonatomic, assign) int plazasDetalleViajeVC;
@property (nonatomic, assign) double precioDetalleViajeVC;
@property (nonatomic, retain) NSString *nombreImagenDetalleViajeVC;

@end
