//
//  OrdenarBebidaViewController.h
//  ProjectRestaurante
//
//  Created by cice on 3/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrdenarBebidaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelTituloOrdenarBebidaVC;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewOrdenarBebidaVC;
@property (weak, nonatomic) IBOutlet UILabel *labelPrecioOrdenarBebidaVC;
@property (weak, nonatomic) IBOutlet UITextView *textViewDescripcionOrdenarBebidaVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonMenosOrdenarBebidaVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonMasOrdenarBebidaVC;
@property (weak, nonatomic) IBOutlet UILabel *labelNumeroOrdenarBebidaVC;
- (IBAction)buttonMenosOrdenarBebidaVC:(id)sender;
- (IBAction)buttonMasOrdenarBebidaVC:(id)sender;

//Se asigna el valor desde la otra clase ElegirBebidaPedidoCollectionViewController
@property (nonatomic, retain) NSString *nombreOrdenarBebidaVC;
@property (nonatomic, assign) double precioOrdenarBebidaVC;
@property (nonatomic, retain) NSString *descripcionOrdenarBebidaVC;

@end
