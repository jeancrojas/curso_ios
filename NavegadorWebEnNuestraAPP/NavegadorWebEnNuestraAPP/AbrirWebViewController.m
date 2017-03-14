//
//  AbrirWebViewController.m
//  NavegadorWebEnNuestraAPP
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AbrirWebViewController.h"

@interface AbrirWebViewController ()

@end

@implementation AbrirWebViewController

@synthesize labelTitulo;
@synthesize webViewVerPagina;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    labelTitulo.text = @"Scripting Systems";
    
    NSURL *url = [NSURL URLWithString:@"http://scriptingsystems.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webViewVerPagina loadRequest:request];
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
