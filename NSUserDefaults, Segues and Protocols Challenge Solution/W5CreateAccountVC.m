//
//  W5CreateAccountVC.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Jimzy Lui on 11/14/2013.
//  Copyright (c) 2013 Jimzy Lui. All rights reserved.
//

#import "W5CreateAccountVC.h"

@interface W5CreateAccountVC ()

@end

@implementation W5CreateAccountVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    if ((self.userNameTextField.text.length != 0) && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]){
        [[NSUserDefaults standardUserDefaults] setObject:self.userNameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [self.delegate didCreateAccount];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information not entered correctly" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}
@end
