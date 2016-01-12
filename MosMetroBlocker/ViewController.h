//
//  ViewController.h
//  MosMetroBlocker
//
//  Created by Alexander on 09/11/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Shimmer/FBShimmering.h>
#import <Shimmer/FBShimmeringLayer.h>
#import <Shimmer/FBShimmeringView.h>

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet FBShimmeringView *shimeeringView;
@property (nonatomic,weak) IBOutlet UILabel *shimmeringLabel;

-(IBAction)showTips:(id)sender;


@end

