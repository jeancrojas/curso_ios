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
int numPregunta=0;
NSMutableArray *listaRespuestasIntroducidas;



bool seEstaPreguntando = true;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [buttonSiguienterPreguntaJugarVC setTitle:@"Siguiente..." forState: UIControlStateNormal];
    appDelegateJugarVC = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    listaRespuestasIntroducidas = [[NSMutableArray alloc] init];
    
    textViewPreguntaJugarVC.text = [appDelegateJugarVC.listaPreguntas objectAtIndex:numPregunta];
    [self mostrarPregunta];
    
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
    
    if (!seEstaPreguntando) {
        ResultadoViewController *vistaResultadoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"idResultadoViewController"];
        
        NSLog(@"Tamaño de respuestas %ld", [listaRespuestasIntroducidas count]);
        
        for (int i=0; i < [listaRespuestasIntroducidas count]; i++) {
                NSLog(@"Resultado: %@", [listaRespuestasIntroducidas objectAtIndex:i] );
        }
        
        vistaResultadoVC.puntuacionResultadoVC = 12;
        [self showViewController:vistaResultadoVC sender:nil];
        
    }
    
    [self mostrarPregunta];
    
}

- (void) mostrarPregunta{
    //Respuesta introducida
    
    NSString *respuestaIntroducida = textFieldRespuestaJugarVC.text;
    //Se muestra la pregunta
    
    
    if (numPregunta < 10 && [respuestaIntroducida length] !=0){
        
        [listaRespuestasIntroducidas addObject:respuestaIntroducida];
        textFieldRespuestaJugarVC.text = @"";
        ++numPregunta;
        //textViewPreguntaJugarVC.text = [appDelegateJugarVC.listaPreguntas objectAtIndex:++numPregunta];
        NSLog(@"valor %d",numPregunta);
        
    }
    
    
    if (numPregunta == [appDelegateJugarVC.listaPreguntas count]-1) {
        [buttonSiguienterPreguntaJugarVC setTitle:@"Finalizar" forState: UIControlStateNormal];
        seEstaPreguntando = false;
    }
}


@end
