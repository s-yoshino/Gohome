//
//  Gohome01ViewController.h
//  Gohome
//
//  Created by Shuichi Yoshino on 11/8/13.
//  Copyright (c) 2013 Shuichi Yoshino. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface Gohome01ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *message;
@property (weak, nonatomic) IBOutlet UIButton *gohome;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UIButton *goWithTrain;

- (IBAction)onGohome:(id)sender;
- (IBAction)onGoWithTrain:(id)sender;
@end
