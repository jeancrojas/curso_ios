//
//  ElegirPlatoPedidoCollectionViewController.m
//  ProjectRestaurante
//
//  Created by cice on 31/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ElegirPlatoPedidoCollectionViewController.h"
#import "PlatoDAO.h"
#import "Plato.h"
#import "OrdenarPlatoViewController.h"

@interface ElegirPlatoPedidoCollectionViewController ()

@end

@implementation ElegirPlatoPedidoCollectionViewController

static NSString * const reuseIdentifier = @"listaElegirPlato";
@synthesize categoriaPlato;

PlatoDAO *platoDAO;
//Lista total de platos
NSMutableArray *listaPlato;
//Lista platos del tipo seleccionado
NSMutableArray *listaPlatoElegido;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    listaPlatoElegido = [[NSMutableArray alloc]init];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillAppear:(BOOL)animated {
    platoDAO = [[PlatoDAO alloc]init];
    listaPlato = [[NSMutableArray alloc]init];
    listaPlato = [platoDAO obtenerPlatos];
    
    //Se almacena en un array unicamente los platos de la categoria seleccionada
    for (int i=0; i < [listaPlato count]; i++) {
        Plato *plato = [listaPlato objectAtIndex:i];
        if (plato.idTipoPlato == categoriaPlato) {
            [listaPlatoElegido addObject:plato];
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
    return [listaPlatoElegido count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    UILabel *labelTituloElegirPlatoPedidoCVC = (UILabel *)[cell viewWithTag:2001];
    UILabel *labelPrecioElegirPlatoPedidoCVC = (UILabel *)[cell viewWithTag:2002];
    
    
    Plato *platoMostrar = [listaPlatoElegido objectAtIndex:indexPath.row];
    labelTituloElegirPlatoPedidoCVC.text = platoMostrar.nombre;
    labelPrecioElegirPlatoPedidoCVC.text= [NSString stringWithFormat:@"%.2f€", platoMostrar.precio];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    OrdenarPlatoViewController *vistaOrdenarPlatoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idOrdenarPlatoVC"];
    
    Plato *plato = [listaPlatoElegido objectAtIndex:indexPath.row];
    
    
    vistaOrdenarPlatoVC.nombreOrdenarPlatoVC = plato.nombre;
    vistaOrdenarPlatoVC.precioOrdenarPlatoVC = plato.precio;
    vistaOrdenarPlatoVC.descripcionOrdenarPlatoVC = plato.descripcion;
    
    [self showViewController:vistaOrdenarPlatoVC sender:nil];

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
