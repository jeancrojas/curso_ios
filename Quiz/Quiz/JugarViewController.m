//
//  JugarViewController.m
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "JugarViewController.h"
#import "AppDelegate.h"
#import "ResultadoViewController.h"

@interface JugarViewController ()

@end

@implementation JugarViewController

@synthesize textViewPreguntaJugarVC;
@synthesize textFieldRespuestaJugarVC;
@synthesize buttonSiguienterPreguntaJugarVC;
AppDelegate *appDelegateJugarVC;
int numPregunta;
NSMutableArray *listaRespuestasIntroducidas;



bool seEstaPreguntando = true;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [buttonSiguienterPreguntaJugarVC setTitle:@"Siguiente..." forState: UIControlStateNormal];
    appDelegateJugarVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    listaRespuestasIntroducidas = [[NSMutableArray alloc] init];
    numPregunta=0;
    textViewPreguntaJugarVC.text = [appDelegateJugarVC.listaPreguntas objectAtIndex:numPregunta];
    [self mostrarPregunta];
    NSLog(@"Lista de preguntas: %ld",[appDelegateJugarVC.listaPreguntas count]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (IBAction)buttonSiguienterPreguntaJugarVC:(id)sender {
    
    [self mostrarPregunta];
    
}

- (void) mostrarPregunta{
    //Respuesta introducida
    //textViewPreguntaJugarVC.text = [appDelegateJugarVC.listaPreguntas objectAtIndex:numPregunta];
    NSString *respuestaIntroducida = textFieldRespuestaJugarVC.text;
    //Se muestra la pregunta
    
    if ( [listaRespuestasIntroducidas count] < 10 && [respuestaIntroducida length] > 0){
        [listaRespuestasIntroducidas addObject:respuestaIntroducida];
        textFieldRespuestaJugarVC.text = @"";
        numPregunta++;
    }
    
    //Evita que te salgas del numero de indices permitidos del Array listaPreguntas
    if (numPregunta < 10) {
        textViewPreguntaJugarVC.text = [appDelegateJugarVC.listaPreguntas objectAtIndex:numPregunta];
    }
    
    //En la pregunta 10 ya se cambia el nombre del botón
    if([listaRespuestasIntroducidas count] == 9){
        [buttonSiguienterPreguntaJugarVC setTitle:@"Finalizar" forState: UIControlStateNormal];
    }
    
    if([listaRespuestasIntroducidas count] == 10){
        ResultadoViewController *vistaResultadoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idResultadoViewController"];
        //Numero de respuestas acertadas
        int resputasAcertadas = 0;
        
        for (int i=0; i < [listaRespuestasIntroducidas count]; i++) {
            
            if( [[listaRespuestasIntroducidas objectAtIndex:i] isEqualToString:  [appDelegateJugarVC.listaRespuestaCorrectas objectAtIndex:i]] ){
                resputasAcertadas++;
            }
        }
        
        NSLog(@"Resultado acertardas: %d", resputasAcertadas );
        vistaResultadoVC.puntuacionResultadoVC = resputasAcertadas;
        //[self showViewController:vistaResultadoVC sender:nil];
        [self presentViewController:vistaResultadoVC animated: YES completion:nil];
    }
    
}


@end
