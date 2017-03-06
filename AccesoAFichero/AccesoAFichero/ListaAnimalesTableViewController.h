//
//  ListaAnimalesTableViewController.h
//  AccesoAFichero
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListaAnimalesTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButtonItemAnyadirListaAnimalesTVC;
- (IBAction)barButtonItemAnyadirListaAnimalesTVC:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tabla;

@end
