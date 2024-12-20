//
//  ViewController.h
//  appMayusculasVisual
//
//  Created by jimbo on 15/12/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldTextoOriginal;



@property (weak, nonatomic) IBOutlet UILabel *stringConvertido;


@property (weak, nonatomic) IBOutlet UIButton *ButtonConvertir;


- (IBAction)convertir:(id)sender;



@end

