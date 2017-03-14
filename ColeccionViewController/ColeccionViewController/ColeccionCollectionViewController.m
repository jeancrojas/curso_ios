//
//  ColeccionCollectionViewController.m
//  ColeccionViewController
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ColeccionCollectionViewController.h"

@interface ColeccionCollectionViewController ()

@end

@implementation ColeccionCollectionViewController

static NSString * const reuseIdentifier = @"coleccionImagenes";
NSMutableArray *archivoImagenes;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    archivoImagenes = [[NSMutableArray alloc]init];
    [archivoImagenes addObject:@"listaImagen1.png"];
    [archivoImagenes addObject:@"listaImagen2.png"];
    [archivoImagenes addObject:@"listaImagen3.png"];
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
    NSLog(@"He introducido el numero de celdas");
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    UILabel *labelTituloColeccionCVC = (UILabel *) [cell viewWithTag:1001];
    UIImageView *imageViewImagenColeccionCVC = (UIImageView *)[cell viewWithTag:1002];
    
    labelTituloColeccionCVC.text = [NSString stringWithFormat:@"Mario Bros %d",(int)indexPath.row+1];
    
    //imageViewImagenColeccionCVC.image = [UIImage imageNamed:[NSString stringWithFormat:@"listaImagen%d.png",(int)indexPath.row]];
    
    imageViewImagenColeccionCVC.image = [UIImage imageNamed:[archivoImagenes objectAtIndex:indexPath.row]];
    NSLog(@"Estoy recorriendo las celdas");
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

-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Has dado click a la celda %ld",indexPath.row);
}

@end
