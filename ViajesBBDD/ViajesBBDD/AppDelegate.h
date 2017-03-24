//
//  AppDelegate.h
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (nonatomic, assign) int idUsuarioAppDelegate;

- (void)saveContext;


@end

