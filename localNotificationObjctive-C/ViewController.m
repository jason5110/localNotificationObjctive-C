//
//  ViewController.m
//  localNotificationObjctive-C
//
//  Created by Jason on 3/29/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPress:(id)sender {
        [self sendNotification:[[NSDate date] dateByAddingTimeInterval:60]];
}

-(void) sendNotification: (NSDate *)date {
    
    UILocalNotification* localNotification = [[UILocalNotification alloc]init];
    localNotification.fireDate = date;
    localNotification.alertBody = @"Check body temperature";
    localNotification.alertAction = @"Show me the item";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.repeatInterval = NSCalendarUnitMinute;//NSCalendarUnitDay;
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

@end
