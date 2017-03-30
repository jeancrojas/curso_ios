//
//  PedidoTableViewController.m
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "PedidoTableViewController.h"
#import "ElegirPedidoCollectionViewController.h"

@interface PedidoTableViewController ()

@end

@implementation PedidoTableViewController
static const int SECTION_PLATOS = 0;
static const int SECTION_BEBIDAS = 1;

@synthesize numMesa;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case SECTION_PLATOS:
            return 3;
            break;
            
        case SECTION_BEBIDAS:
            return 7;
            break;
    }
    
    return 0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    NSLog(@"Se ha seleccionado: %ld - %ld", indexPath.section, indexPath.row);
    ElegirPedidoCollectionViewController *vistaElegirPedidoCVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idElegirPedidoCVC"];
    
    
    
    switch (indexPath.section) {
        case SECTION_PLATOS:
            vistaElegirPedidoCVC.section = (int)indexPath.section;
            vistaElegirPedidoCVC.category = (int)indexPath.row;
            break;
            
        case SECTION_BEBIDAS:
            vistaElegirPedidoCVC.section = (int)indexPath.section;
            vistaElegirPedidoCVC.category = (int)indexPath.row;
            break;
    }
    
    
    [self showViewController:vistaElegirPedidoCVC sender: nil];
    
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
