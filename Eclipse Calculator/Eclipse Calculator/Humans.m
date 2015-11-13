//
//  Humans.m
//  Eclipse Calculator
//
//  Created by Dustin Peaire on 11/12/15.
//  Copyright © 2015 Peaire. All rights reserved.
//

#import "Humans.h"

@interface Humans () <UIAlertViewDelegate>

@end

@implementation Humans

- (void)viewDidLoad {
    
    goldInit = 7;
    buildInit = 7;
    scienceInit = 7;
    gold= goldInit;
    build = buildInit;
    science = scienceInit;
    resources = @[@2,@3,@4,@6,@8,@10,@12,@15,@18,@21,@24,@28];

    
    pinkResource.text = [NSString stringWithFormat:@"%i", scienceInit];
    orangeResource.text = [NSString stringWithFormat:@"%i", goldInit];
    brownResource.text = [NSString stringWithFormat:@"%i", buildInit];
    
    pinkNumber.text = [NSString stringWithFormat:@"%@", [resources objectAtIndex:0]];
    orangeNumber.text = [NSString stringWithFormat:@"%@",[resources objectAtIndex:0]];
    brownNumber.text = [NSString stringWithFormat:@"%@", [resources objectAtIndex:0]];
    
    
    [super viewDidLoad];

}

-(void)buildAlert
{
    UIAlertController *buildAlert = [UIAlertController alertControllerWithTitle:@"Cannot Build"
                                                                        message:@"Not enough build resources!"
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [buildAlert addAction:defaultAction];
    [self presentViewController:buildAlert animated:YES completion:nil];
    
}




-(IBAction)resourceAdditionPink
{
   
    i++;
    if(i>=[resources count]){i=0;}
    
        pinkNumber.text =[NSString stringWithFormat: @"%@",[resources objectAtIndex:i]];
    
    
}

-(IBAction)resourceAdditionOrange
{
    
    i++;
    if(i>=[resources count]){i=0;}
    
    orangeNumber.text =[NSString stringWithFormat: @"%@",[resources objectAtIndex:i]];
    
    
}

-(IBAction)resourceAdditionBrown
{
    
    i++;
    if(i>=[resources count]){i=0;}
    
    brownNumber.text =[NSString stringWithFormat: @"%@",[resources objectAtIndex:i]];
    
    
}



-(IBAction)buildInterceptor
{
    
    int buildShip = build-3;
    if (build<3){[self buildAlert];return;}
    pinkResource.text = [NSString stringWithFormat:@"%i",buildShip];
    build=buildShip;
    
    
}

-(IBAction)buildCruiser
{
    
    int buildShip = build-5;
    if (build<5){[self buildAlert];return;}
    pinkResource.text = [NSString stringWithFormat:@"%i",buildShip];
    build=buildShip;
    
    
}

-(IBAction)buildDreadnought
{
    
    int buildShip = build-8;
    if (build<8){[self buildAlert];return;}
    pinkResource.text = [NSString stringWithFormat:@"%i",buildShip];
    build=buildShip;
    
    
}

@end
