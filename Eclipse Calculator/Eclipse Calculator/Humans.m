//
//  Humans.m
//  Eclipse Calculator
//
//  Created by Dustin Peaire on 11/12/15.
//  Copyright © 2015 Peaire. All rights reserved.
//

#import "Humans.h"

@implementation Humans

- (void)viewDidLoad {
    
    goldInit = 3;
    buildInit = 3;
    scienceInit = 3;
    gold= 2;
    build = 2;
    science = 2;
    resources = @[@2,@3,@4,@6,@8,@10,@12,@15,@18,@21,@24,@28];

    
    pinkResource.text = [NSString stringWithFormat:@"%i", scienceInit];
    orangeResource.text = [NSString stringWithFormat:@"%i", goldInit];
    brownResource.text = [NSString stringWithFormat:@"%i", buildInit];
    
    pinkNumber.text = [NSString stringWithFormat:@"%@", [resources objectAtIndex:0]];
    orangeNumber.text = [NSString stringWithFormat:@"%@",[resources objectAtIndex:0]];
    brownNumber.text = [NSString stringWithFormat:@"%@", [resources objectAtIndex:0]];
    
    
    [super viewDidLoad];

}

-(IBAction)resourceAddition
{
    
    for (int i =0; i<10; i++) {
        pinkNumber.text =[NSString stringWithFormat: @"%@",[resources objectAtIndex:i]];
    }
    
}

@end
