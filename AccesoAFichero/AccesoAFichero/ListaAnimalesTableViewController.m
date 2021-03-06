//
//  ListaAnimalesTableViewController.m
//  AccesoAFichero
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ListaAnimalesTableViewController.h"
#import "AppDelegate.h"
#import "AnyadirNombreAnimalViewController.h"
#import "EditarNombreAnimalesViewController.h"

@interface ListaAnimalesTableViewController ()

@end

@implementation ListaAnimalesTableViewController

AppDelegate *appDelegateListaAnimalesTVC;
NSMutableArray *listaArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    //Asigno el Array (nuevo o con los datos locales) el Array que voy a utilizar en la aplicacion.
    
    appDelegateListaAnimalesTVC = ((AppDelegate *) [[UIApplication sharedApplication]delegate]);
    
    listaArray = appDelegateListaAnimalesTVC.listaAnimales;
    
    //Ver la ubicacion del archivo
    NSLog(@"La ubicacacion del archivo es: %@", appDelegateListaAnimalesTVC.youArrayFileName);
    /*
    [appDelegateListaAnimalesTVC.listaAnimales addObject:@"Coneja"];
    [appDelegateListaAnimalesTVC.listaAnimales addObject:@"Perro"];
    [appDelegateListaAnimalesTVC.listaAnimales addObject:@"Gato"];
    [appDelegateListaAnimalesTVC.listaAnimales addObject:@"Hámster"];
    */
    //[listaArray writeToFile:appDelegateListaAnimalesTVC.youArrayFileName atomically:YES];
    
    
    
    
}

-(void) viewWillAppear:(BOOL)animated{
    
    [self.tabla reloadData];
    
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
    return [listaArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"idListaAnimales" forIndexPath:indexPath];
    
    // Configure the cell...
    UILabel *labelNombreAnimalesListaAnimalesTVC = (UILabel *) [cell viewWithTag:1001];
    labelNombreAnimalesListaAnimalesTVC.text = [appDelegateListaAnimalesTVC.listaAnimales objectAtIndex:indexPath.row ];
    
    
    
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
    
    if ([segue.identifier isEqualToString:@"segueListaAnimalesAEditarNombreAnimales"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        EditarNombreAnimalesViewController *vistaEditarNombreAnimalesVC = segue.destinationViewController;
        vistaEditarNombreAnimalesVC.numberItem = (long) indexPath.row;
    }
}


- (IBAction)barButtonItemAnyadirListaAnimalesTVC:(id)sender {
    
    AnyadirNombreAnimalViewController *vistaAnyadirNombreAnimalVC= [self.storyboard instantiateViewControllerWithIdentifier:@"idAnyadirNombreAnimalVC"];
    
    [self showViewController:vistaAnyadirNombreAnimalVC sender:nil];
    
    
}
@end
