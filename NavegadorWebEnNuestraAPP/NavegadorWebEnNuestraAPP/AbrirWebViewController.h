//
//  AbrirWebViewController.h
//  NavegadorWebEnNuestraAPP
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface AbrirWebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webViewVerPagina;
@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;

@end
