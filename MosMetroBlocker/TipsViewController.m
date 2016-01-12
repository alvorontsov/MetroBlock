//
//  TipsViewController.m
//  MosMetroBlocker
//
//  Created by Alexander on 09/11/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import "TipsViewController.h"

@interface TipsViewController<MFMailComposeViewControllerDelegate> ()

@end

@implementation TipsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



-(IBAction)goBack:(id)sender {
    [self performSegueWithIdentifier:@"toMain" sender:self];
}

-(IBAction)showEmail:(id)sender {
    if ([MFMailComposeViewController canSendMail]) {
        NSLog(@"sending mail");
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        [mail setSubject:@"MetroBlock Feedback"];
        [mail setMessageBody:@"Hello" isHTML:NO];
        [mail setToRecipients:@[@"mosmetroblock@gmail.com"]];
        [self presentViewController:mail animated:YES completion:NULL];
    }
    else {
        NSLog(@"Your device cannot send mail");
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error"
                                                                       message:@"Не удается отправить email. Пожалуйста, проверьте подключена ли почта."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction *action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }

}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
    {
    switch (result) {
        case MFMailComposeResultSent:
            NSLog(@"You sent the email.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"You saved a draft of this email");
            break;
        case MFMailComposeResultCancelled:
            NSLog(@"You cancelled sending this email.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed:  An error occurred when trying to compose this email");
            break;
        default:
            NSLog(@"An error occurred when trying to compose this email");
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
