//
//  DetalleProductoViewController.h
//  LoginV2
//
//  Created by cice on 2/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalleProductoViewController : UIViewController
@property  int detalleDelProducto;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewProductoDetalleProductoVC;
@property (weak, nonatomic) IBOutlet UILabel *labelDetalleDetalleProductoVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonComprarDetalleProductoVC;
- (IBAction)buttonComprarDetalleProductoVC:(id)sender;

@end
