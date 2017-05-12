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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableURLRequest *url = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.google.com"]];
    
    [url addQueries:@{@"key":@"value"}];
    
    //NSLog(@"URL: %@", url);
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
