//
//  ListaAnimalTableViewController.m
//  AccesoAFicheroObject
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ListaAnimalTableViewController.h"
#import "AppDelegate.h"
#import "Animal.h"
#import "AnyadirAnimalViewController.h"

@interface ListaAnimalTableViewController ()

@end

@implementation ListaAnimalTableViewController

AppDelegate *appDelegateListaAnimalTVC;
NSMutableArray *listaAnimalAppDelegateListaAnimalTVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    appDelegateListaAnimalTVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    listaAnimalAppDelegateListaAnimalTVC = appDelegateListaAnimalTVC.listaAnimal;
    
    
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
    return [appDelegateListaAnimalTVC.listaAnimal count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"idListaAnimal" forIndexPath:indexPath];
    
    // Configure the cell...
    UILabel *labelNombreListaAnimalTVC = (UILabel *) [cell viewWithTag:1001];
    
    
    Animal *animalAux = (Animal *) [listaAnimalAppDelegateListaAnimalTVC objectAtIndex:indexPath.row];
    
    
    labelNombreListaAnimalTVC.text = animalAux.nombre;
    
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)barButtonItemListaAnimalTVC:(id)sender {
    AnyadirAnimalViewController *vistaAnyadirAnimalVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idAnyadirAnimalVC"];
    
    [self showViewController:vistaAnyadirAnimalVC sender:nil];
    
}
@end
