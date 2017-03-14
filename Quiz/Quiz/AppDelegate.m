//
//  AppDelegate.m
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AppDelegate.h"
#import "Concursante.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize listaPreguntas;
@synthesize listaRespuestaCorrectas;
@synthesize youArrayFileName;
@synthesize listaClasificatoria;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    
    //Se seleciona la ruta exacta
    youArrayFileName = [documentDirectory stringByAppendingPathComponent:@"clasificacionGlobal.dat"];
    
    listaClasificatoria = [[NSMutableArray alloc]initWithContentsOfFile:youArrayFileName];
    
    
    listaPreguntas = [[NSArray alloc]init];
    listaPreguntas = @[
                       @"Pregunta 1.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 2.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 3.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 4.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 5.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 6.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 7.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 8.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 9.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción.",
                       @"Pregunta 10.\nA.-Primera opción\nB.-Segunda opción\nC.-Tercera opción\nD.-Cuarta opción."];
    
    
    listaRespuestaCorrectas = [[NSArray alloc]init];
    listaRespuestaCorrectas = @[
                       @"a",
                       @"b",
                       @"c",
                       @"d",
                       @"a",
                       @"b",
                       @"a",
                       @"b",
                       @"c",
                       @"d"];
    
    
    //Si es la primera vez que accedo a mi aplicacion, debo crear el Array
    if (listaClasificatoria == nil) {
        listaClasificatoria = [[NSMutableArray alloc]init];
        NSLog(@"El fichero NO  existe");
        
        NSMutableDictionary *listaTest1 = [[NSMutableDictionary alloc]init];
        [listaTest1 setObject: @"Coli Flor" forKey:@"alias"];
        [listaTest1 setObject: [NSNumber numberWithInt:7] forKey:@"puntuacion"];
        
        NSMutableDictionary *listaTest2 = [[NSMutableDictionary alloc]init];
        [listaTest2 setObject: @"Alca Chofa" forKey:@"alias"];
        [listaTest2 setObject: [NSNumber numberWithInt:5] forKey:@"puntuacion"];
        
        
        //[listaClasificatoria addObject:@"Primero"];
        //[listaClasificatoria addObject:@"Segundo"];
        
        [listaClasificatoria addObject:listaTest1];
        [listaClasificatoria addObject:listaTest2];
        
        [listaClasificatoria writeToFile:youArrayFileName atomically: YES];
        
    }else{
        NSLog(@"El fichero SI existe");
    }
    
    //Se añaden concursantes al archivo
    /*
    Concursante *c1 = [[Concursante alloc] intConsursante:@"Coli Flor" puntuacion: 7];
    
    Concursante *c2 = [[Concursante alloc] intConsursante:@"Alca Chofa" puntuacion:5];
    
    
    [listaClasificatoria addObject:c1];
    [listaClasificatoria addObject:c2];
     */
    
    NSLog(@"Ubicación del archivo: %@",youArrayFileName);
    /*
    
    for (int i=0; i < [listaClasificatoria count]; i++) {
        
        NSMutableDictionary *nsMD = [listaClasificatoria objectAtIndex:i];
        
        NSLog(@"Alias: %@ , con puntuación: %d", [nsMD objectForKey:@"alias"], [[nsMD objectForKey:@"puntuacion"] intValue] );
        
    }
    */
    
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
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"Quiz"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end
