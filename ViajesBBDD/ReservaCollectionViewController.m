//
//  ReservaCollectionViewController.m
//  ViajesBBDD
//
//  Created by cice on 23/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ReservaCollectionViewController.h"
#import "SWRevealViewController.h"
#import "ViajeDAO.h"
#import "Viaje.h"
#import "AppDelegate.h"

@interface ReservaCollectionViewController ()

@end

@implementation ReservaCollectionViewController

ViajeDAO *daoReservaCVC;
NSMutableArray *listaViajeReservaCVC;
AppDelegate *appDelegateReservaCVC;

static NSString * const reuseIdentifier = @"idReservaCVC";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    //Agregar el botón
    appDelegateReservaCVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated {
    daoReservaCVC = [[ViajeDAO alloc]init];
    listaViajeReservaCVC = [[NSMutableArray alloc]init];
    NSString *consulta = [NSString stringWithFormat:@"SELECT * FROM viaje WHERE idUsuario=%d",appDelegateReservaCVC.idUsuarioAppDelegate ];
    listaViajeReservaCVC = [daoReservaCVC consultaViaje:consulta];
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
    return [listaViajeReservaCVC count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    Viaje *viaje = [listaViajeReservaCVC objectAtIndex:indexPath.row];
    
    UILabel *labelTituloReservaCVC = (UILabel *)[cell viewWithTag:2001];
    UIImageView *imageViewImagenReservaCVC = (UIImageView *)[cell viewWithTag:2002];
    
    labelTituloReservaCVC.text = viaje.lugar;
    imageViewImagenReservaCVC.image = [UIImage imageNamed:viaje.nombreImagen];
    
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

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
