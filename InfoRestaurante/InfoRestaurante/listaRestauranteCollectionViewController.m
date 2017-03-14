//
//  listaRestauranteCollectionViewController.m
//  InfoRestaurante
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "listaRestauranteCollectionViewController.h"

@interface listaRestauranteCollectionViewController ()

@end

@implementation listaRestauranteCollectionViewController

static NSString * const reuseIdentifier = @"idListaRestauranteCVC";
NSMutableArray *nombreImagenRestaurante;
NSMutableArray *nombreRestaurante;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    nombreImagenRestaurante = [[NSMutableArray alloc]init];
    [nombreImagenRestaurante addObject:@"restauranteAsadorDeAranda.jpg"];
    [nombreImagenRestaurante addObject:@"restauranteBrasaleña.jpg"];
    [nombreImagenRestaurante addObject:@"restauranteElFaro.jpg"];
    [nombreImagenRestaurante addObject:@"restauranteElIntiDeOro.jpg"];
    [nombreImagenRestaurante addObject:@"restauranteGastonAcurioMadrid.jpg"];
    [nombreImagenRestaurante addObject:@"restauranteLaPepica.jpg"];
    [nombreImagenRestaurante addObject:@"restauranteLaVacaArgentina.jpg"];
    
    nombreRestaurante = [[NSMutableArray alloc]init];
    [nombreRestaurante addObject:@"Asador De Aranda"];
    [nombreRestaurante addObject:@"Brasaleña"];
    [nombreRestaurante addObject:@"El Faro"];
    [nombreRestaurante addObject:@"El Inti De Oro"];
    [nombreRestaurante addObject:@"Gaston Acurio Madrid"];
    [nombreRestaurante addObject:@"La Pepica"];
    [nombreRestaurante addObject:@"La Vaca Argentina"];
    
    
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
    return [nombreImagenRestaurante count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    UILabel *labelTitulolistaRestauranteCVC = (UILabel *) [cell viewWithTag:1001];
    UIImageView *imagenRestaurante = (UIImageView *) [cell viewWithTag:1002];
    
    labelTitulolistaRestauranteCVC.text = [nombreRestaurante objectAtIndex:indexPath.row];
    imagenRestaurante.image = [UIImage imageNamed:[nombreImagenRestaurante objectAtIndex:indexPath.row]];
    
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

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
}

@end
