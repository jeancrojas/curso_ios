//
//  TiendaTableViewController.m
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "TiendaTableViewController.h"
#import "AppDelegate.h"
#import "Tienda.h"
#import "MapaViewController.h"

@interface TiendaTableViewController ()

@end

@implementation TiendaTableViewController

AppDelegate *appDelegateTiendaTVC;
//NSMutableArray *listaTiendaTVC;
MapaViewController *vistaMapaVCTiendaTVC;
NSMutableArray *listaTiendaTVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    NSLog(@"He recibido el siguiente tipo de tienda: %d",self.tipoTiendaTiendaTVC);
    
    appDelegateTiendaTVC = ((AppDelegate *)[[UIApplication sharedApplication]delegate]);
    listaTiendaTVC = [[NSMutableArray alloc]init];
    Tienda *t = [[Tienda alloc] init];
    
    
    for (int i=0; i < [appDelegateTiendaTVC.listaTiendas count]; i++) {
        
        
        t = (Tienda *)[appDelegateTiendaTVC.listaTiendas objectAtIndex:i ];
        
        if ( t.tipo == self.tipoTiendaTiendaTVC ) {
            [listaTiendaTVC addObject:t];
        }
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listaTiendaTVC count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listaTiendaSeleccionada" forIndexPath:indexPath];
    
    // Configure the cell...
    UITextView *labelDatosTiendaTVC = (UITextView *)[cell viewWithTag:1001];
    UILabel *labelTest = (UILabel *) [cell viewWithTag:1002];
    
    Tienda *t = [[Tienda alloc]init];
    t = [listaTiendaTVC objectAtIndex:indexPath.row];
    labelDatosTiendaTVC.text = [NSString stringWithFormat:@"Nombre: %@ \nTipo: %d \nCódigo Postal: %d",t.nombre,t.tipo, t.cP];
    labelTest.text = @"Este es un txt de prueba";
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ( [segue.identifier isEqualToString:@"segueTiendaTVCAMapaVC"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        vistaMapaVCTiendaTVC = segue.destinationViewController;
        vistaMapaVCTiendaTVC.objectTiendaSeleccionada = [listaTiendaTVC objectAtIndex:indexPath.row];
        vistaMapaVCTiendaTVC.tiendaSeleccionada = true;
    }
    
    
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Usted ha seleccionado: %ld",(long)indexPath.row);
    
    
}


@end
