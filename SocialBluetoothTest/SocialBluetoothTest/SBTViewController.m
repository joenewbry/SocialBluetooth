//
//  SBTViewController.m
//  SocialBluetoothTest
//
//  Created by Joe Newbry on 4/19/14.
//  Copyright (c) 2014 Joe Newbry. All rights reserved.
//

#import "SBTViewController.h"
#import <SBUserDiscovery.h>

@interface SBTViewController () <SBUserDiscoveryDelegate>

@end

int i;
@implementation SBTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    i = 0;

    [self startSearch];




}

- (void)startSearch
{
    NSLog(@"Start Search for User");
    [SBUserDiscovery createUserDiscovery];
    [[SBUserDiscovery currentUserDiscovery] stopSearchForUsers];
    [SBUserDiscovery currentUserDiscovery].delegate = self;
    [[SBUserDiscovery currentUserDiscovery] searchForUsers];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didReceiveUserID:(NSString *)userID
{
    NSLog(@"User # %i found is %@", i, userID);
    i++;
    [self startSearch];
}

@end
