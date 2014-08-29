//
//  ViewController.h
//  colors
//
//  Created by Kevin French on 5/31/14.
//  Copyright (c) 2014 Kevin French. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)redSlider:(UISlider *)sender;
- (IBAction)greenSlider:(UISlider *)sender;
- (IBAction)blueSlider:(UISlider *)sender;
- (IBAction)alphaSlider:(UISlider *)sender;

@property (strong, nonatomic) IBOutlet UISlider *redSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;
@property (strong, nonatomic) IBOutlet UISlider *alphaSlider;

@property (strong, nonatomic) IBOutlet UILabel *red;
@property (strong, nonatomic) IBOutlet UILabel *green;
@property (strong, nonatomic) IBOutlet UILabel *blue;
@property (strong, nonatomic) IBOutlet UILabel *alpha;
- (IBAction)logColor:(UIButton *)sender;

@end
