//
//  OrdenarPlatoViewController.h
//  ProjectRestaurante
//
//  Created by cice on 3/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrdenarPlatoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelTituloOrdenarPlatoVC;
@property (weak, nonatomic) IBOutlet UILabel *labelPrecioOrdenarPlatoVC;
@property (weak, nonatomic) IBOutlet UITextView *textViewDescripcionOrdenarPlatoVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonMenosOrdenarPlatoVC;
@property (weak, nonatomic) IBOutlet UIButton *buttonMasOrdenarPlatoVC;
@property (weak, nonatomic) IBOutlet UILabel *labelNumeroOrdenarPlatoVC;
- (IBAction)buttonMenosOrdenarPlatoVC:(id)sender;
- (IBAction)buttonMasOrdenarPlatoVC:(id)sender;

//Se asigna el valor desde la otra clase ElegirBebidaPedidoCollectionViewController
@property (nonatomic,retain) NSString *nombreOrdenarPlatoVC;
@property (nonatomic,assign) double precioOrdenarPlatoVC;
@property (nonatomic,retain) NSString *descripcionOrdenarPlatoVC;

@end
