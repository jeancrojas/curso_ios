//
//  MesaCollectionViewController.m
//  ProjectRestaurante
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MesaCollectionViewController.h"
#import "AppDelegate.h"
#import "Mesa.h"
#import "AjustarTableViewController.h"

@interface MesaCollectionViewController ()

@end

@implementation MesaCollectionViewController

static NSString * const reuseIdentifier = @"numeroMesaCVC";
NSMutableArray *numMesa;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    AppDelegate *appDelegateMesaCVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    numMesa = [[NSMutableArray alloc]init];
    numMesa = appDelegateMesaCVC.listaMesa;
    
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
    NSLog(@"Numero de mesas: %ld",[numMesa count]);
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    //Mesa *mesa = [numMesa objectAtIndex:indexPath.row];
    
    UILabel *labelNumeroMesaCVC = (UILabel *) [cell viewWithTag:1001];
    labelNumeroMesaCVC.text =  [NSString stringWithFormat:@"%ld", indexPath.row+1 ];
    
    
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

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewController *vistaPedidoTVC = [self.storyboard instantiateViewControllerWithIdentifier: @"idSeleccionarPedidoTBC"];
    //vistaPedidoTVC.numMesa = (int)indexPath.row;
    
    [self showViewController:vistaPedidoTVC sender: nil];
    
}

- (IBAction)barButtonItemAjustarMesaCVC:(id)sender {
    AjustarTableViewController *vistaAjustarTVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idAjustarTVC"];
    
    [self showViewController:vistaAjustarTVC sender:nil];
    
}
@end
