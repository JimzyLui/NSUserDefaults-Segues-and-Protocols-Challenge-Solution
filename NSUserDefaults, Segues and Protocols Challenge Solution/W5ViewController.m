//
//  W5ViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Jimzy Lui on 11/13/2013.
//  Copyright (c) 2013 Jimzy Lui. All rights reserved.
//

#import "W5ViewController.h"
#import "W5CreateAccountVC.h"  //so I can use the #define

@interface W5ViewController ()

@end

@implementation W5ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.userNameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
