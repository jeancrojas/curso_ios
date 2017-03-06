//
//  AppDelegate.h
//  AccesoAFicheroObject
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,retain) NSMutableArray *listaAnimal;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

