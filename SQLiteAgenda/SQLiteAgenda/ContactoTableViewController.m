//
//  ContactoTableViewController.m
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ContactoTableViewController.h"
#import "AgendaDAO.h"
#import "Agenda.h"
#import "DetalleContactoViewController.h"
#import "AnyadirContactoViewController.h"

@interface ContactoTableViewController ()

@end

@implementation ContactoTableViewController
AgendaDAO *dao;
NSMutableArray *listaContacto;
@synthesize tableViewContactoTVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
   // dao = [[AgendaDAO alloc]init];
   // [self viewWillAppear:YES];
    
}

-(void) viewWillAppear:(BOOL)animated {
    dao = [[AgendaDAO alloc]init];
    listaContacto = [[NSMutableArray alloc]init];
    listaContacto = [dao obtenerContactos];
    [self.tableViewContactoTVC reloadData];
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
    NSLog(@"numero de lineas: %ld",[listaContacto count]);
    return [listaContacto count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listaContactoTVC" forIndexPath:indexPath];
    
    
    Agenda *contacto = [listaContacto objectAtIndex:indexPath.row];
    
    // Configure the cell...
    UILabel *labelNombreContactoTVC = (UILabel *) [cell viewWithTag:1001] ;
    labelNombreContactoTVC.text = contacto.nombre;
    
    
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetalleContactoViewController *vistaDetalleContactoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idDetalleContactoVC"];
    
    Agenda *contacto = [listaContacto objectAtIndex:indexPath.row];
    
    
    vistaDetalleContactoVC.nombre = contacto.nombre;
    vistaDetalleContactoVC.telefono = contacto.telefono;
    vistaDetalleContactoVC.direccion = contacto.direccion;
    
    [self showViewController:vistaDetalleContactoVC sender:nil];
    
    
}




- (IBAction)barButtonItemAnyadirContactoTVC:(id)sender {
    
    AnyadirContactoViewController *vistaAnyadirContactoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idAnyadirContactoVC"];
    
    [self showViewController:vistaAnyadirContactoVC sender:nil];
    
}
@end
