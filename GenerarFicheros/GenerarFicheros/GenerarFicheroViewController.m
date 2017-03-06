//
//  GenerarFicheroViewController.m
//  GenerarFicheros
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "GenerarFicheroViewController.h"

@interface GenerarFicheroViewController ()

@end

@implementation GenerarFicheroViewController
NSMutableArray *yourArray;
NSString *youArrayFileName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    //Se seleciona la ruta exacta
    youArrayFileName = [documentsDirectory stringByAppendingPathComponent:@"example.dat"];
    
    //Ver la ubicacion del archivo
    NSLog(@"ubicacion %@", youArrayFileName);
    
    //Inicializo el Array
     yourArray = [[NSMutableArray alloc] initWithContentsOfFile:youArrayFileName];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonCreate:(id)sender {
    //Si es la primera vez que accedo a mi aplicacion, debo crear el Array
    if (yourArray == nil) {
        //el Array no existe, con lo que se crear uno nuevo
        yourArray = [[NSMutableArray alloc] init];
        
        NSLog(@"El fichero NO  existe. Se ha creado");
    } else {
        NSLog(@"El fichero SI existe");
    }
    
    //Asigno el Array (nuevo o con los datos locales) el Array que voy a utilizar en la aplicacion.
    NSMutableArray *listaArray = yourArray;
    
    [listaArray writeToFile:youArrayFileName atomically:YES];
    
}
- (IBAction)buttonDelete:(id)sender {
    
    NSError *error;
    //Existe el archivo
    if ([[NSFileManager defaultManager] fileExistsAtPath: youArrayFileName]) {
        if (![[NSFileManager defaultManager] removeItemAtPath:youArrayFileName error:&error]) {
            NSLog(@"Delete file error: %@", error);
        } else {
            NSLog(@"Se ha eliminado.");
        }
    }
    
    
}
@end
