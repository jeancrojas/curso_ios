//
//  AnyadirAnimalViewController.m
//  AccesoAFicheroObject
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AnyadirAnimalViewController.h"
#import "Animal.h"


@interface AnyadirAnimalViewController ()

@end

@implementation AnyadirAnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.buttonAnyadirAnyadirAnimalVC setTitle:@"Añadir" forState: UIControlStateNormal];
    
    
    
    Animal *animal = [[Animal alloc] init];
    
    [animal anyadirAnimal:5 End:4]
    
    
    
    
    
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

- (IBAction)buttonAnyadirAnyadirAnimalVC:(id)sender {
    
    
}
@end
