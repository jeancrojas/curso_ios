//
//  AppDelegate.h
//  LoginV2
//
//  Created by cice on 2/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (nonatomic, retain) NSMutableArray *listaUsuarios;
@property (nonatomic, retain) NSMutableArray *listaContrasenyaUsuarios;
@property (nonatomic, retain) NSMutableArray *listaCategorias;
@property (nonatomic, retain) NSMutableArray *listaProductosCPU;
@property (nonatomic, retain) NSMutableArray *listaProductosHD;
@property (nonatomic, retain) NSMutableArray *listaProductosMotherBoard;
@property (nonatomic, retain) NSMutableArray *listaProductosRAM;
@property (nonatomic, retain) NSMutableArray *listaProductosPowerSupply;
@property (nonatomic, retain) NSMutableArray *listaProductosMonitor;
@property (nonatomic, retain) NSMutableArray *listaProductosKeyBoard;
@property (nonatomic, retain) NSMutableArray *listaProductosMouse;

- (void)saveContext;


@end

