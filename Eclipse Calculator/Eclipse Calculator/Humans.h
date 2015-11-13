//
//  Humans.h
//  Eclipse Calculator
//
//  Created by Dustin Peaire on 11/12/15.
//  Copyright © 2015 Peaire. All rights reserved.
//

#import <UIKit/UIKit.h>

int gold;
int build;
int science;
int goldInit;
int buildInit;
int scienceInit;
int influence;
int i=0;
NSArray *resources;


@interface Humans : UIViewController <UIAlertViewDelegate>

{
    IBOutlet UIButton *pink;
    IBOutlet UIButton *orange;
    IBOutlet UIButton *brown;
    IBOutlet UILabel *pinkNumber;
    IBOutlet UILabel *orangeNumber;
    IBOutlet UILabel *brownNumber;
    IBOutlet UILabel *pinkResource;
    IBOutlet UILabel *orangeResource;
    IBOutlet UILabel *brownResource;
    IBOutlet UIButton *interceptorBuild;
    IBOutlet UIButton *cruiserBuild;
    IBOutlet UIButton *dreadnoughtBuild;
    IBOutlet UIButton *stationBuild;
    


}

-(IBAction)resourceAdditionPink;
-(IBAction)resourceAdditionOrange;
-(IBAction)resourceAdditionBrown;



-(IBAction)buildInterceptor;
-(void)buildAlert;
-(IBAction)buildCruiser;
-(IBAction)buildDreadnought;
-(IBAction)buildStation;



-(IBAction)endTurn;

@end
