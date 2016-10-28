//
//  PCViewController.m
//  ParticleExtensions
//
//  Created by Rocco Del Priore on 10/28/2016.
//  Copyright (c) 2016 Rocco Del Priore. All rights reserved.
//

#import "PCViewController.h"

#import <ParticleExtensions/Extensions.h>

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *someView = [[UIView alloc] init];
    
    UIView *otherView = [[UIView alloc] init];
    UIView *sampleView = [[UIView alloc] init];
    
    [someView addSubviews:@[otherView, sampleView]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
