//
//  AdminViewController.h
//  LoginV2
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdminViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonUsuariosAdminVC;
- (IBAction)buttonUsuariosAdminVC:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonProductosAdminVC;
- (IBAction)buttonProductosAdminVC:(id)sender;

@end
