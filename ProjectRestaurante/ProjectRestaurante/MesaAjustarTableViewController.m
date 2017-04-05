//
//  MesaAjustarTableViewController.m
//  ProjectRestaurante
//
//  Created by cice on 24/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//


#import "AppDelegate.h"
#import "MesaAjustarTableViewController.h"
#import "Mesa.h"

@interface MesaAjustarTableViewController ()

@end

@implementation MesaAjustarTableViewController

@synthesize barButtonItemEliminarMesaAjustarTVC;
@synthesize barButtonItemAnyadirMesaAjustarTVC;
@synthesize barButtonItemGuardarMesaAjustarTVC;

NSInteger numMesasTemporalMesaAjustarTVC;
NSMutableArray *listaMesaAjustarTVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    AppDelegate *appDelegateMesaAjustarTVC = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    numMesasTemporalMesaAjustarTVC = appDelegateMesaAjustarTVC.numMesasTemporal;
    listaMesaAjustarTVC = appDelegateMesaAjustarTVC.listaMesa;
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
    return numMesasTemporalMesaAjustarTVC;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listaMesaAjustarTVC" forIndexPath:indexPath];
    
    // Configure the cell...
    Mesa *auxMesa = [listaMesaAjustarTVC objectAtIndex:indexPath.row ];
    UILabel *labelNombreMesaAjustarTVC = (UILabel *)[cell viewWithTag:2001];
    labelNombreMesaAjustarTVC.text =  [NSString stringWithFormat:@"Mesa %d", auxMesa.idMesa];
    
    return cell;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableViewMesaAjustarTVC reloadData];
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

- (IBAction)barButtonItemEliminarMesaAjustarTVC:(id)sender {
    if (numMesasTemporalMesaAjustarTVC > 0) {
        numMesasTemporalMesaAjustarTVC--;
        [listaMesaAjustarTVC removeLastObject];
        
    }
    [self.tableViewMesaAjustarTVC reloadData];
}
- (IBAction)barButtonItemAnyadirMesaAjustarTVC:(id)sender {
    
    if (numMesasTemporalMesaAjustarTVC < 20) {
        numMesasTemporalMesaAjustarTVC++;
        Mesa *mesaAux = [[Mesa alloc]initWithId:(int)numMesasTemporalMesaAjustarTVC precio:0];
        [listaMesaAjustarTVC addObject:mesaAux];
    }
    [self.tableViewMesaAjustarTVC reloadData];
}
- (IBAction)barButtonItemGuardarMesaAjustarTVC:(id)sender {
    for (int i=0; i < [listaMesaAjustarTVC count] ; i++) {
        NSLog(@"%@", [listaMesaAjustarTVC objectAtIndex:i]);
    }
    
    //PENDIENTE GUARDAR EN LA BBDD
    
    
}
@end
