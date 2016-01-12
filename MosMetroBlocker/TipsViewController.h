//
//  TipsViewController.h
//  MosMetroBlocker
//
//  Created by Alexander on 09/11/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface TipsViewController <MFMailComposeViewControllerDelegate> : UIViewController


- (IBAction)goBack:(id)sender;
- (IBAction)showEmail:(id)sender;

@end
