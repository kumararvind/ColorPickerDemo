//
//  ViewController.m
//  ColorPickerDemo
//
//  Created by Infoicon on 16/02/17.
//  Copyright © 2017 InfoiconTechnologies. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (nonatomic, weak) IBOutlet HRColorPickerView *colorPickerView;

@end

@implementation ViewController{
      UIColor *_color;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colorPickerView.color = [UIColor redColor];
    [self.colorPickerView addTarget:self
                             action:@selector(colorDidChange:)
                   forControlEvents:UIControlEventValueChanged];
    
    self.colorPickerView.layer.borderColor=[[UIColor darkGrayColor] CGColor];
    self.colorPickerView.layer.borderWidth=2.0f;
}


- (void)colorDidChange:(HRColorPickerView *)colorPickerView {
    _color = colorPickerView.color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
