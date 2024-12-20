//
//  ViewController.m
//  appMayusculasVisual
//
//  Created by jimbo on 15/12/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}





- (IBAction)convertir:(id)sender {
   
    NSString *textoOriginal = self.textFieldTextoOriginal.text;
    
   
    if (textoOriginal.length == 0) {
        self.textFieldTextoOriginal.text = @"Por favor, ingresa un texto.";
        return;
    }
    
   
    NSMutableString *cadenaMutable = [NSMutableString stringWithString:textoOriginal];
    
    
    NSMutableString *cadenaMayusculas = [self convertirAMayusculas:cadenaMutable];
    

    self.stringConvertido.text = cadenaMayusculas;
}

- (NSMutableString *)convertirAMayusculas:(NSMutableString *)cadena {
    NSInteger longitud = cadena.length;
    
    
    for (NSInteger i = 0; i < longitud; i++) {
        unichar caracter = [cadena characterAtIndex:i];
        
    
        if (caracter >= 'a' && caracter <= 'z') {
            
            [cadena replaceCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithFormat:@"%C", (unichar)toupper(caracter)]];
        }
    }
    
    return cadena;
}


@end
