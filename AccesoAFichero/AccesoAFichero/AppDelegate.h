//
//  AppDelegate.h
//  AccesoAFichero
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (nonatomic, retain) NSString *youArrayFileName;
@property (nonatomic, retain) NSMutableArray *listaAnimales;

- (void)saveContext;


@end

