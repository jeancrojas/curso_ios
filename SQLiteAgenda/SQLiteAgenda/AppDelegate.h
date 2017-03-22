//
//  AppDelegate.h
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

