//
//  MesaAjustarTableViewController.h
//  ProjectRestaurante
//
//  Created by cice on 24/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MesaAjustarTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButtonItemEliminarMesaAjustarTVC;
- (IBAction)barButtonItemEliminarMesaAjustarTVC:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButtonItemAnyadirMesaAjustarTVC;
- (IBAction)barButtonItemAnyadirMesaAjustarTVC:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButtonItemGuardarMesaAjustarTVC;
- (IBAction)barButtonItemGuardarMesaAjustarTVC:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tableViewMesaAjustarTVC;

@end
