//
//  AjustarTableViewController.m
//  ProjectRestaurante
//
//  Created by cice on 24/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AjustarTableViewController.h"
#import "MesaAjustarTableViewController.h"
#import "MenuAjustarTableViewController.h"

@interface AjustarTableViewController ()

@end

@implementation AjustarTableViewController

static const int OPCION_MESA = 1;
static const int OPCION_MENU = 2;
static const int OPCION_PLATOSCARTA = 3;
static const int OPCION_BEBIDAS = 4;
static const int OPCION_POSTRES = 5;

@synthesize labelMesaAjustarTVC;
@synthesize labelMenuAjustarTVC;
@synthesize labelPlatoCartaAjustarTVC;
@synthesize labelBebidaAjustarTVC;
@synthesize labelPostreAjustarTVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    labelMesaAjustarTVC.text = @"Mesas";
    labelMenuAjustarTVC.text = @"Menú";
    labelPlatoCartaAjustarTVC.text = @"Platos a la Carta";
    labelBebidaAjustarTVC.text = @"Bebidas";
    labelPostreAjustarTVC.text = @"Postres";
    
    
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
    return 6;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MesaAjustarTableViewController *vistaIdNCMesaAjustarTVC;
    MenuAjustarTableViewController *vistaIDMenuAjustarTVC;
    
    switch (indexPath.row) {
        case OPCION_MESA:
            vistaIdNCMesaAjustarTVC = [self.storyboard instantiateViewControllerWithIdentifier: @"idNCMesaAjustarTVC"];
            [self showViewController:vistaIdNCMesaAjustarTVC sender: nil];
            break;
            
        case OPCION_MENU:
            vistaIDMenuAjustarTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idMenuAjustarTVC"];
            [self showViewController:vistaIDMenuAjustarTVC sender: nil];
            break;
        
        case OPCION_PLATOSCARTA:
            break;
            
        case OPCION_BEBIDAS:
            break;
        case OPCION_POSTRES:
            break;
            
        default:
            break;
    }

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
