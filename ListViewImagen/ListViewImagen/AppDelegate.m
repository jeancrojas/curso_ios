//
//  AppDelegate.m
//  ListViewImagen
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.listaImagenes = [[NSMutableArray alloc] init];
    self.listaTitulosImagenes = [[NSMutableArray alloc] init];
    
    [self.listaImagenes addObject:@"listaImagen1.png"];
    [self.listaImagenes addObject:@"listaImagen2.png"];
    [self.listaImagenes addObject:@"listaImagen3.png"];
    [self.listaImagenes addObject:@"listaImagen4.png"];
    [self.listaImagenes addObject:@"listaImagen5.png"];
    [self.listaImagenes addObject:@"listaImagen6.png"];
    [self.listaImagenes addObject:@"listaImagen7.png"];
    [self.listaImagenes addObject:@"listaImagen8.png"];
    [self.listaImagenes addObject:@"listaImagen9.png"];
    [self.listaImagenes addObject:@"listaImagen10.png"];
    
    [self.listaTitulosImagenes addObject: @"Imagen 1"];
    [self.listaTitulosImagenes addObject: @"Imagen 2"];
    [self.listaTitulosImagenes addObject: @"Imagen 3"];
    [self.listaTitulosImagenes addObject: @"Imagen 4"];
    [self.listaTitulosImagenes addObject: @"Imagen 5"];
    [self.listaTitulosImagenes addObject: @"Imagen 6"];
    [self.listaTitulosImagenes addObject: @"Imagen 7"];
    [self.listaTitulosImagenes addObject: @"Imagen 8"];
    [self.listaTitulosImagenes addObject: @"Imagen 9"];
    [self.listaTitulosImagenes addObject: @"Imagen 10"];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
