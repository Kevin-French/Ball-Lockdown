//
//  ViewController.m
//  colors
//
//  Created by Kevin French on 5/31/14.
//  Copyright (c) 2014 Kevin French. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize redSlider, greenSlider, blueSlider, alphaSlider, red, green, blue, alpha;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redSlider:(UISlider *)sender {
    [self changeBackgroundColor];
    [red setText:[NSString stringWithFormat:@"%.02f", [redSlider value]]];
}

- (IBAction)greenSlider:(UISlider *)sender {
    [self changeBackgroundColor];
    [green setText:[NSString stringWithFormat:@"%.02f", [greenSlider value]]];
}

- (IBAction)blueSlider:(UISlider *)sender {
    [self changeBackgroundColor];
    [blue setText:[NSString stringWithFormat:@"%.02f", [blueSlider value]]];
}

- (IBAction)alphaSlider:(UISlider *)sender {
    [self changeBackgroundColor];
    [alpha setText:[NSString stringWithFormat:@"%.02f", [alphaSlider value]]];
}

- (void) changeBackgroundColor
{
    double r = [redSlider value];
    double g = [greenSlider value];
    double b = [blueSlider value];
    double a = [alphaSlider value];
    
    r /= 255;
    g /= 255;
    b /= 255;
    
    [self.view setBackgroundColor:[UIColor colorWithRed:r green:g blue:b alpha:a]];
}
- (IBAction)logColor:(UIButton *)sender {
    NSLog(@"R: %.02f, G: %.02f, B: %.02f, Alpha: %.02f", [redSlider value], [greenSlider value], [blueSlider value], [alphaSlider value]);
}
@end
