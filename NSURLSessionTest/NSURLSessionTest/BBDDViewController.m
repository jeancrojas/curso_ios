//
//  BBDDViewController.m
//  NSURLSessionTest
//
//  Created by cice on 29/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "BBDDViewController.h"

@interface BBDDViewController ()

@end

@implementation BBDDViewController
@synthesize buttonEjecutarBBDDVC;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [buttonEjecutarBBDDVC setTitle:@"Ejecutar" forState: UIControlStateNormal];
    
    //Método PHP para obtener la previsión del tiempo en mi BBDD
    NSMutableArray *diasTabla, *iconosTabla, *maximasTabla, *minimasTabla;
    diasTabla = [[NSMutableArray alloc]init];
    iconosTabla = [[NSMutableArray alloc]init];
    maximasTabla = [[NSMutableArray alloc]init];
    minimasTabla = [[NSMutableArray alloc]init];
    
    NSString *urlAdd = [NSString stringWithFormat:@"http://mobup.es/cice/obtener_tiempo.php"];
    
    //Configuración de la sesión
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    //La proporciona la WEB que te provee la API
    sessionConfiguration.HTTPAdditionalHeaders = @{
                                                   @"api_key" : @"55e76dc4bbae25b066cb",
                                                   @"Accept" : @"application/json"};
    
    //inicializacion de la sesion
    NSURLSession *session = [NSURLSession sessionWithConfiguration: sessionConfiguration];
    
    //Tarea de gestion de datos
    NSURL *url = [NSURL URLWithString:urlAdd];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
    
        //Sondeo de la respuesta HTTP del servidor
        NSHTTPURLResponse *HTTPResponse = (NSHTTPURLResponse *)response;
        if (HTTPResponse.statusCode == 200){
            if (!error) {
                //Conversion de JSON a objeto Foundation(NSArray)
                NSArray *notes = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error: nil];
                //Recorremos el Array para obtener todos los resultados
                int i=0;
                NSUInteger numeroFilas = [notes count];
                while(i < numeroFilas){
                    NSMutableDictionary *arr = [notes objectAtIndex:i];
                    NSString *dia = [arr valueForKey:@"dia"];
                    [diasTabla addObject:dia];
                    
                    NSString *icono = [arr valueForKey:@"icono"];
                    [iconosTabla addObject:icono];
                    
                    NSString *maxima = [arr valueForKey:@"maxima"];
                    [maximasTabla addObject:maxima];
                    
                    NSString *minima = [arr valueForKey:@"minima"];
                    [minimasTabla addObject:minima];
                    
                    i++;
                }
                
                for ( NSString *dT in diasTabla) {
                    NSLog(@"Día: %@",dT);
                }
                
                for ( NSString *dT in iconosTabla) {
                    NSLog(@"Icono: %@",dT);
                }
                
                for ( NSString *dT in maximasTabla) {
                    NSLog(@"Máxima: %@",dT);
                }
                
                for ( NSString *dT in minimasTabla) {
                    NSLog(@"Minima: %@",dT);
                }
                
            }else{
                NSAssert(NO, @"Error al obtener las notas del servidor");
            }
        }
        
    }];
    
    [dataTask resume];
    
    
    
    
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

- (IBAction)buttonEjecutarBBDDVC:(id)sender {
}
@end
