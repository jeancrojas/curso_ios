//
//  ElegirBebidaPedidoCollectionViewController.m
//  ProjectRestaurante
//
//  Created by cice on 3/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ElegirBebidaPedidoCollectionViewController.h"
#import "BebidaDAO.h"
#import "Bebida.h"
#import "OrdenarBebidaViewController.h"

@interface ElegirBebidaPedidoCollectionViewController ()

@end

@implementation ElegirBebidaPedidoCollectionViewController

@synthesize categoriaBebida;
static NSString * const reuseIdentifier = @"listaElegirBebida";
BebidaDAO *bebidaDAO;
NSMutableArray *listaBebida;
NSMutableArray *listaBebidaElegida;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    listaBebidaElegida = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated {
    bebidaDAO = [[BebidaDAO alloc]init];
    listaBebida = [[NSMutableArray alloc]init];
    listaBebida = [bebidaDAO obtenerBebidas];
    
    //Se almacena en un array unicamente los platos de la categoria seleccionada
    for (int i=0; i < [listaBebida count]; i++) {
        Bebida *bebida = [listaBebida objectAtIndex:i];
        if (bebida.idTipoBebida == categoriaBebida) {
            [listaBebidaElegida addObject:bebida];
        }
    }
    
    //[self.tableViewContactoTVC reloadData];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [listaBebidaElegida count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    Bebida *bebida = [listaBebidaElegida objectAtIndex:indexPath.row];
    
    UILabel *labelTituloElegirBebidaPedidoCVC = (UILabel *) [cell viewWithTag:3001];
    UILabel *labelPrecioElegirBebidaPedidoCVC = (UILabel *) [cell viewWithTag:3002];
    
    labelTituloElegirBebidaPedidoCVC.text = bebida.nombre;
    labelPrecioElegirBebidaPedidoCVC.text = [NSString stringWithFormat:@"%.2f€",bebida.precio];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    OrdenarBebidaViewController *vistaOrdenarBebidaVC = [self.storyboard instantiateViewControllerWithIdentifier: @"idOrdenarBebidaVC"];
    Bebida *bebida = [listaBebidaElegida objectAtIndex:indexPath.row];

    vistaOrdenarBebidaVC.nombreOrdenarBebidaVC = bebida.nombre;
    vistaOrdenarBebidaVC.precioOrdenarBebidaVC = bebida.precio;
    vistaOrdenarBebidaVC.descripcionOrdenarBebidaVC = bebida.descripcion;
    
    
    [self showViewController:vistaOrdenarBebidaVC sender: nil];
    
}


/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
