//
//  ContactoTableViewController.h
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactoTableViewController : UITableViewController
- (IBAction)barButtonItemAnyadirContactoTVC:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tableViewContactoTVC;

@end
