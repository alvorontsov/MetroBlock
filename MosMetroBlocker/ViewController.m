//
//  ViewController.m
//  MosMetroBlocker
//
//  Created by Alexander on 09/11/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.shimeeringView.shimmering = true;
    self.shimeeringView.contentView = self.shimmeringLabel;
    //shimmer
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showTips:(id)sender {
    [self performSegueWithIdentifier:@"showTips" sender:self];
}

@end
