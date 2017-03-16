//
//  WebViewController.m
//  AppVisitSpain
//
//  Created by cice on 16/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize webViewMostrarWebVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:@"http://www.madrid.org/cs/Satellite?cid=1142322453978&pageid=1142322433572&pagename=PortalJoven/JUVE_Alojamiento_FA/JUVE_alojamiento&rootpageid=1152517028736"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webViewMostrarWebVC loadRequest:request];

    
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
