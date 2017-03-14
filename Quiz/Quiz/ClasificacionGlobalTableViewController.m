//
//  ClasificacionGlobalTableViewController.m
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ClasificacionGlobalTableViewController.h"
#import "AppDelegate.h"

@interface ClasificacionGlobalTableViewController ()

@end

@implementation ClasificacionGlobalTableViewController

AppDelegate *appDelegateClasificacionGlobalTVC;
NSMutableArray *listaClasificatoriaClasificacionGlobalTVC;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    appDelegateClasificacionGlobalTVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    listaClasificatoriaClasificacionGlobalTVC = appDelegateClasificacionGlobalTVC.listaClasificatoria;
    
    
    NSLog(@"Ordenando:");
    NSSortDescriptor *ordenar = [[NSSortDescriptor alloc]init];
    
    NSMutableArray *misNumeros = [[NSMutableArray alloc]init];
    [misNumeros addObject:[NSNumber 1]];
    [misNumeros addObject:9];
    [misNumeros addObject:5];
    [misNumeros addObject:3];
    
    
    ordenar setValue:<#(nullable id)#> forKey:<#(nonnull NSString *)#>
    
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

    return [listaClasificatoriaClasificacionGlobalTVC count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listaConcursantes" forIndexPath:indexPath];
    
    
    
    UILabel *labelAliasClasificacionGlobalTVC = (UILabel *) [cell viewWithTag:1001];
    UILabel *labelPuntuacionClasificacionGlobalTVC = (UILabel *) [cell viewWithTag:1002];

    
    
    NSMutableDictionary *dictionaryClasificacion = [listaClasificatoriaClasificacionGlobalTVC objectAtIndex:indexPath.row];
    labelAliasClasificacionGlobalTVC.text = [dictionaryClasificacion objectForKey:@"alias"];
    labelPuntuacionClasificacionGlobalTVC.text = [NSString stringWithFormat: @"%@", [dictionaryClasificacion objectForKey:@"puntuacion"]];
    
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

@end
