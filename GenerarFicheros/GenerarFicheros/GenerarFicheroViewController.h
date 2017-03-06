//
//  GenerarFicheroViewController.h
//  GenerarFicheros
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GenerarFicheroViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonCreate;
- (IBAction)buttonCreate:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonDelete;
- (IBAction)buttonDelete:(id)sender;

@end
