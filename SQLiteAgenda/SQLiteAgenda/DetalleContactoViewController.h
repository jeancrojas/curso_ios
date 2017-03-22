//
//  DetalleContactoViewController.h
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalleContactoViewController : UIViewController

@property (nonatomic, retain) NSString *nombre;
@property (nonatomic, retain) NSString *telefono;
@property (nonatomic, retain) NSString *direccion;
@property (weak, nonatomic) IBOutlet UILabel *labelNombreDetalleContactoVC;
@property (weak, nonatomic) IBOutlet UILabel *labelTelefonoDetalleContactoVC;
@property (weak, nonatomic) IBOutlet UILabel *labelDireccionDetalleContactoVC;

@end
