//
//  AdminViajesCollectionViewController.m
//  ViajesBBDD
//
//  Created by cice on 27/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AdminViajesCollectionViewController.h"
#import "ViajeDAO.h"
#import "Viaje.h"
#import "AnyadirViajeViewController.h"

@interface AdminViajesCollectionViewController ()

@end

@implementation AdminViajesCollectionViewController

ViajeDAO *daoAdminViajesCVC;
NSMutableArray *listaViajeAdminViajesCVC;

static NSString * const reuseIdentifier = @"idAdminViajesCVC";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated {
    daoAdminViajesCVC = [[ViajeDAO alloc]init];
    listaViajeAdminViajesCVC = [[NSMutableArray alloc]init];
    listaViajeAdminViajesCVC = [daoAdminViajesCVC obtenerContactos];
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
    return [listaViajeAdminViajesCVC count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    Viaje *viajeCVC = [[Viaje alloc]init];
    viajeCVC = (Viaje *) [listaViajeAdminViajesCVC objectAtIndex:indexPath.row];
    
    // Configure the cell
    UILabel *labelTituloViajesCVC = (UILabel *) [cell viewWithTag:3001];
    UILabel *labelPrecioViajesCVC = (UILabel *) [cell viewWithTag:3002];
    UIImageView *imageViewImangenViajesCVC = (UIImageView *) [cell viewWithTag:3003];
    
    
    labelTituloViajesCVC.text = viajeCVC.lugar;
    labelPrecioViajesCVC.text = [NSString stringWithFormat:@"%.2f€",viajeCVC.precio];
    imageViewImangenViajesCVC.image = [UIImage imageNamed:viajeCVC.nombreImagen];
    
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

- (IBAction)barButtonItemAnyadirAdminViajesCVC:(id)sender {
    AnyadirViajeViewController *vistaAnyadirViajeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idAnyadirViajeVC"];
    [self showViewController:vistaAnyadirViajeVC sender: nil];
    
}
@end
