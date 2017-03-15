//
//  WebRestauranteViewController.m
//  InfoRestaurante
//
//  Created by cice on 15/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "WebRestauranteViewController.h"
#import "Restaurante.h"
#import "AppDelegate.h"
#import "InfoRestauranteViewController.h"

@interface WebRestauranteViewController ()

@end

@implementation WebRestauranteViewController
@synthesize webViewPaginaWebRestauranteVC;
@synthesize indiceRestauranteWebRestauranteVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    AppDelegate *appDelegateWebRestauranteVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    Restaurante *restauranteWebRestauranteVC = [appDelegateWebRestauranteVC.listaDeRestaurantes objectAtIndex:indiceRestauranteWebRestauranteVC];
    
    NSLog(@"La pagina web es: %@",restauranteWebRestauranteVC.web);
    
    NSURL *url = [NSURL URLWithString: restauranteWebRestauranteVC.web];
    NSURLRequest *resquest = [NSURLRequest requestWithURL:url];
    [webViewPaginaWebRestauranteVC loadRequest:resquest];
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

@end
