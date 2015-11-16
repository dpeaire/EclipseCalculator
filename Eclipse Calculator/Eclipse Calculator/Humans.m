//
//  Humans.m
//  Eclipse Calculator
//
//  Created by Dustin Peaire on 11/12/15.
//  Copyright © 2015 Peaire. All rights reserved.
//

#import "Humans.h"
#import "HomeScreen.h"

NSInteger race;
@implementation Humans


- (void)viewDidLoad {
    
    switch (race) {
    case 0:
        gold = 3;
        build = 3;
        science = 3;
        interceptorCost = 3;
        cruiserCost = 5;
        dreadnoughCost = 8;
        stationCost = 3;
        break;
    case 1:
        gold = 7;
        build = 7;
        science = 7;
        interceptorCost = 3;
        cruiserCost = 5;
        dreadnoughCost = 8;
        stationCost = 3;
        break;
        
    }
    resources = @[@2,@3,@4,@6,@8,@10,@12,@15,@18,@21,@24,@28];

    
    pinkResource.text = [NSString stringWithFormat:@"%i", science];
    orangeResource.text = [NSString stringWithFormat:@"%i", gold];
    brownResource.text = [NSString stringWithFormat:@"%i", build];
    
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
    
    int buildShip = build-interceptorCost;
    if (build<3){[self buildAlert];return;}
    brownResource.text = [NSString stringWithFormat:@"%i",buildShip];
    build=buildShip;
}

-(IBAction)buildCruiser
{
    
    int buildShip = build-cruiserCost;
    if (build<5){[self buildAlert];return;}
    brownResource.text = [NSString stringWithFormat:@"%i",buildShip];
    build=buildShip;
}

-(IBAction)buildDreadnought
{
    
    int buildShip = build-dreadnoughCost;
    if (build<8){[self buildAlert];return;}
    brownResource.text = [NSString stringWithFormat:@"%i",buildShip];
    build=buildShip;
}

-(IBAction)buildStation
{
    int buildShip = build-stationCost;
    if (build<3){[self buildAlert];return;}
    brownResource.text = [NSString stringWithFormat:@"%i",buildShip];
    build=buildShip;
}

-(IBAction)endTurn
{
    
}

@end
