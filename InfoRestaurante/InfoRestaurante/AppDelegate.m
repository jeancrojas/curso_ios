//
//  AppDelegate.m
//  InfoRestaurante
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AppDelegate.h"
#import "Restaurante.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize listaDeRestaurantes;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    
    
    
    Restaurante *restauranteAsadorDeAranda = [[Restaurante alloc]initWithNombre: @"Asador de Aranda" nombreImagenRestaurante:@"restauranteAsadorDeAranda.jpg" web: @"http://www.asadordearanda.net" descripcion: @"El lechazo asado en horno de barro, el cordero como ya nadie lo cocina "
        "El lechazo asado en horno de barro, es la especialidad. La técnica es sencilla pero inmejorable, "
    "es por ello por lo que se mantiene desde tiempos inmemorables. Poco más puede acompañar "
    "a este plato tan natural; los tintos de la ribera, los mariscos de Castilla y por supuesto "
                               "buen apetito y compañia." coordenadaLatitud:40.443132 coordenadaLongitud:-3.696011];
    
    
    Restaurante *restauranteBrasaylena = [[Restaurante alloc] initWithNombre: @"Brasaylena" nombreImagenRestaurante:@"restauranteBrasaylena.jpg" web:@"http://www.brasaylena.com" descripcion:@"Si eres un amantes de la carne, y disfrutas con la gastronomía de otros lugares, Brasayleña será tu destino favorito."
    "En cualquiera de nuestros 23 restaurantes vivirás la experiencia de degustar la mejor cocina brasileña, atendida por auténticos churrasqueros de aquel país, y podrás disfrutar de más de 15 cortes distintos de carne de res, ave, cerdo o ternera, asados igual que en Brasil."
    "Chorizo criollo, jamoncito de pollo marinado, costillas de res, costillas de cerdo, entraña de ternera, picanha brasileña, pechuga de pollo envuelta en bacón, lomo de cerdo marinado, alcatra brasileña, lacón de pollo y un largo etcétera." coordenadaLatitud:40.416143 coordenadaLongitud:-3.708713];
    
    
    
    Restaurante *restauranteElFaro = [[Restaurante alloc]initWithNombre:@"El Faro" nombreImagenRestaurante:@"restauranteElFaro.jpg" web:@"http://www.elfarodelpardo.com" descripcion:@"El Faro – decimos- combina este doble gusto:"
      "La calidad de sus platos- entre los que destacan carnes, el cordero, cochinillo, gamo y jabalí, sin olvidar nuestros arroces, con un entorno estimulador de los sentidos. Cincuenta años dando de comer, a gusto, haciendo de cada plato arte de yantar. El Pardo, en fin, es una bendición de la naturaleza. En este monte que se extendió desde los tiempos de Fernando IV y que hoy, dos largos siglos después, sigue siendo el lugar de esparcimiento, disfrute, y –por que no- de degustación, sabor a gloria." coordenadaLatitud:40.514106 coordenadaLongitud:-3.764285];
    
    
    Restaurante *restauranteIntiDeOro = [[Restaurante alloc]initWithNombre:@"El Inti de Oro" nombreImagenRestaurante:@"restauranteElIntiDeOro.jpg" web:@"http://www.intideoro.com" descripcion:@"Nuestro restaurante comienza su andadura el 24 de abril de 1991 de la mano de León Carrillo, con una larga experiencia en la cocina peruana que data de 1976 cuando comenzo en el restaurante “El Inca”, el primer restaurante peruano en España. Desde entonces su mayor preocupación siempre ha sido que los clientes queden completamente satisfechos. Esto lo consigue gracias a un buen equipo de profesionales peruano que, usando los ingredientes de la tierra, logran que los platos salgan igual que en el mismísimo Perú." coordenadaLatitud:40.415607 coordenadaLongitud:-3.699012];
    
    
    Restaurante *restauranteGastonAcurioMadrid = [[Restaurante alloc] initWithNombre:@"Gaston Acurio Madrid" nombreImagenRestaurante:@"restauranteGastonAcurioMadrid.jpg" web:@"https://aygmadrid.com" descripcion:@"A&G es el primer restaurante de alta cocina peruana de Madrid. Desde su apertura en 2007 se ha convertido en un lugar de referencia en el segmento de la alta cocina en la ciudad." coordenadaLatitud: 40.2540080 coordenadaLongitud:-3.414560];
    
    Restaurante *restauranteLaPepica = [[Restaurante alloc]initWithNombre:@"La Pepica" nombreImagenRestaurante:@"restauranteLaPepica.jpg" web:@"http://www.lapepica.com" descripcion:@"La cocina valenciana de La Pepica y su sabroso arroz, las vistas al mar mediterráneo, el sol y el buen ambiente son el mejor atractivo de un restaurante que va camino de sus 120 años de historia." coordenadaLatitud:39.463320 coordenadaLongitud:-0.323424];
    

    Restaurante *restaurateLaVacaArgentina = [[Restaurante alloc]initWithNombre:@"La Vaca Argentina" nombreImagenRestaurante:@"restauranteLaVacaArgentina.jpg" web:@"http://www.lavaca.es" descripcion: @"Descubre la nueva Carta de Hamburguesas LAVACA, by Paco Pérez, cinco estrellas Michelín. Saborea los mejores cortes de nuestra selección de razas nacionales e internacionales de vacuno a la parrilla de carbón de encina y al horno de brasas con aroma de sarmiento. Nuestra filosofía es mejorar cada día para hacer de cada visita a LAVACA una experiencia gastronómica irrepetible." coordenadaLatitud:40.439966 coordenadaLongitud:-3.681023];
    
    
        
    listaDeRestaurantes = [[NSMutableArray alloc] initWithObjects:restauranteAsadorDeAranda, restauranteBrasaylena,restauranteElFaro, restauranteIntiDeOro, restauranteGastonAcurioMadrid, restauranteLaPepica, restaurateLaVacaArgentina, nil];
    
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
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"InfoRestaurante"];
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
