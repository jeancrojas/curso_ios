//
//  ProductosTableViewController.m
//  LoginV2
//
//  Created by cice on 2/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ProductosTableViewController.h"
#import "AppDelegate.h"
#import "DetalleProductoViewController.h"

@interface ProductosTableViewController ()

@end

@implementation ProductosTableViewController

AppDelegate *appDelegateProductosTVC;
NSString *TAG= @"ProductosTableViewController";
int numFila;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSLog(@"Se ha recibido lo siguiente: %@",self.productos);
    appDelegateProductosTVC = ((AppDelegate *) [[UIApplication sharedApplication]delegate]);
    numFila = [self.productos intValue];
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
    //return [appDelegateProductosTVC.listaProductosHD count];
    
    
    
    NSLog(@"%@ tableView()... Numero de filas cargadas %d", TAG, numFila );
    
    switch (numFila) {
        case 0:
            return [appDelegateProductosTVC.listaProductosCPU count];
            break;
            
        case 1:
            return [appDelegateProductosTVC.listaProductosHD count];
            break;
        
        default:
            break;
    }
    
    return 2;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listaProducto" forIndexPath:indexPath];
    
    // Configure the cell...
    
    UILabel *labelProductoProductosTVC = (UILabel *) [cell viewWithTag:2001];
    NSString *nombreProducto;
    
    
    switch (numFila) {
        case 0:
            nombreProducto = [appDelegateProductosTVC.listaProductosCPU objectAtIndex:indexPath.row];
            labelProductoProductosTVC.text = nombreProducto;
            break;
            
        case 1:
            nombreProducto = [appDelegateProductosTVC.listaProductosHD objectAtIndex:indexPath.row];
            labelProductoProductosTVC.text = nombreProducto;
            break;
            
        default:
            break;
    }
    
    
    
    
    
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
    if ([segue.identifier isEqualToString:@"segueProductosADetalleP"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetalleProductoViewController *vistaDetalleProductoVC = segue.destinationViewController;
        vistaDetalleProductoVC.detalleDelProducto = [NSString stringWithFormat:@""];
    }
}


@end
