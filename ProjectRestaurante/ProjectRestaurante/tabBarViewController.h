//
//  tabBarViewController.h
//  ProjectRestaurante
//
//  Created by cice on 5/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tabBarViewController : UITabBarController
@property (weak, nonatomic) IBOutlet UIButton *buttonCalcularTotalConsumido;
- (IBAction)buttonCalcularTotalConsumido:(id)sender;
@end
