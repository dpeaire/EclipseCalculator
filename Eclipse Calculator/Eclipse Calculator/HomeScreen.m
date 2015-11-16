//
//  ViewController.m
//  Eclipse Calculator
//
//  Created by Dustin Peaire on 11/12/15.
//  Copyright © 2015 Peaire. All rights reserved.
//

#import "HomeScreen.h"

@interface HomeScreen() <UIPickerViewDataSource,UIPickerViewDelegate>

@end


@implementation HomeScreen

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
     NSString * title;
    switch(row) {
        case 0:
            title = @"Humans";
            race = 0;
            break;
        case 1:
            title = @"Planta";
            race = 1;
            break;
        case 2:
            title = @"Draco";
            break;
        case 3:
            title = @"Orion";
            break;
        case 4:
            title = @"Hydran";
            break;
        case 5:
            title = @"Mechanema";
            break;
        case 6:
            title = @"Epsilon";
            break;
            
    }

    return title;
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







@end
