//
//  Gohome01ViewController.m
//  Gohome
//
//  Created by Shuichi Yoshino on 11/8/13.
//  Copyright (c) 2013 Shuichi Yoshino. All rights reserved.
//

#import "Gohome01ViewController.h"
#import <Social/Social.h>
#import "line.h"

@interface Gohome01ViewController ()

@end

@implementation Gohome01ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onGohome:(id)sender {
    
    NSString* sendMessage = [NSString stringWithFormat:@"%@", self.message.text];
    
    [Line shareText:sendMessage];
}

- (IBAction)onGoWithTrain:(id)sender {
    
    NSString *saddr = @"東京都品川区大崎1-11-1";
    //saddr = [saddr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    saddr = @"";
    
    NSString *daddr = @"東京都品川区二葉2-11-6";
    daddr = [daddr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

    NSString *directions = [NSString stringWithFormat:@"comgooglemaps://?saddr=%@&daddr=%@&directionsmode=transit", saddr, daddr];
    
    if ([[UIApplication sharedApplication] canOpenURL:
         [NSURL URLWithString:@"comgooglemaps://"]])
    {
        [[UIApplication sharedApplication] openURL:
         [NSURL URLWithString:directions]];
    } else {
        NSLog(@"Can't use comgooglemaps://");
    }
}
@end