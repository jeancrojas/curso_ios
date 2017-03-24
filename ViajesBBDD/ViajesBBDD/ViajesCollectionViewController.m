//
//  ViajesCollectionViewController.m
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ViajesCollectionViewController.h"
#import "ViajeDAO.h"
#import "Viaje.h"
#import "SWRevealViewController.h"
#import "DetalleViajeViewController.h"

@interface ViajesCollectionViewController ()

@end

@implementation ViajesCollectionViewController

ViajeDAO *dao;
NSMutableArray *listaViaje;

static NSString * const reuseIdentifier = @"idViajesCVC";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    //Agregar el botón
    UIButton *boton = [UIButton buttonWithType:UIButtonTypeCustom];
    [boton setFrame:CGRectMake(5.0, 5.0, 17, 17)];
    [boton setImage:[UIImage imageNamed:@"reveal-icon.png"] forState:UIControlStateNormal ];
    
    UIBarButtonItem *revealBoton = [[UIBarButtonItem alloc]initWithCustomView:boton];
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:revealBoton, nil];
    
    //Controlador SWReveal
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController){
        [boton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    

    
}

-(void) viewWillAppear:(BOOL)animated {
    dao = [[ViajeDAO alloc]init];
    listaViaje = [[NSMutableArray alloc]init];
    listaViaje = [dao obtenerContactos];
    //[self.collectionViewViajesCVC reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    //NSLog(@"numero de item: %ld", [listaViaje count]);
    
    return [listaViaje count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    Viaje *viajeCVC = [[Viaje alloc]init];
    viajeCVC = (Viaje *) [listaViaje objectAtIndex:indexPath.row];
    
    // Configure the cell
    UILabel *labelTituloViajesCVC = (UILabel *) [cell viewWithTag:1001];
    UILabel *labelPrecioViajesCVC = (UILabel *) [cell viewWithTag:1002];
    UIImageView *imageViewImangenViajesCVC = (UIImageView *) [cell viewWithTag:1003];
    
    
    labelTituloViajesCVC.text = viajeCVC.lugar;
    labelPrecioViajesCVC.text = [NSString stringWithFormat:@"%.2f€",viajeCVC.precio];
    imageViewImangenViajesCVC.image = [UIImage imageNamed:viajeCVC.nombreImagen];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //Si instancia un objecto de la Clase Viaje que se haya pulsado
    Viaje *viajeCVC = [[Viaje alloc]init];
    viajeCVC = (Viaje *) [listaViaje objectAtIndex:indexPath.row];
    
    
    NSLog(@"Ha seleccionado la celda: %ld", (long)indexPath.row);
    //DetalleViajeViewController *vistaDetalleViajeVCNC = [self.storyboard instantiateViewControllerWithIdentifier:@"idDetalleViajeVCNC"];
    DetalleViajeViewController *vistaDetalleViajeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idDetalleViajeVC"];
    
    vistaDetalleViajeVC.idViajeDetalleViajeVC = (int)viajeCVC.idViaje;
    vistaDetalleViajeVC.lugarDetalleViajeVC = viajeCVC.lugar;
    vistaDetalleViajeVC.descripcionDetalleViajeVC = viajeCVC.descripcion;
    vistaDetalleViajeVC.plazasDetalleViajeVC = viajeCVC.plazas;
    vistaDetalleViajeVC.precioDetalleViajeVC = viajeCVC.precio;
    vistaDetalleViajeVC.nombreImagenDetalleViajeVC = viajeCVC.nombreImagen;
    
    
    [self showViewController:vistaDetalleViajeVC sender:nil];
    
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
