//
//  ViewController.m
//  Eclipse Calculator
//
//  Created by Dustin Peaire on 11/12/15.
//  Copyright © 2015 Peaire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDataSource,UIPickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIPickerView *picker = [UIPickerView new];
    picker.delegate = self;
    picker.dataSource = self;
    picker.showsSelectionIndicator = YES;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 7;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString * title = nil;
    switch(row) {
        case 0:
            title = @"Human";
            break;
        case 1:
            title = @"Planta";
            break;
        case 2:
            title = @"Draco";
            break;
        case 3:
            title = @"Orion";
            break;
        case 4:
            title = @"Hydran Progress";
            break;
        case 5:
            title = @"Mechanema";
            break;
        case 6:
            title = @"Epsilon Eridani";
            break;
            
    }
    return title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
