//
//  W5SignInVC.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Jimzy Lui on 11/14/2013.
//  Copyright (c) 2013 Jimzy Lui. All rights reserved.
//

#import "W5SignInVC.h"

@interface W5SignInVC ()

@end

@implementation W5SignInVC

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.destinationViewController isKindOfClass:[W5CreateAccountVC class]]){
        W5CreateAccountVC *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    if ([self.userNameTextField.text isEqualToString:username] && [self.passwordTextField.text isEqualToString:password]){
        [self performSegueWithIdentifier:@"toVCSegue" sender:sender];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Username or password combination does not work" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
}

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountVCSegue" sender:sender];
    
}

#pragma mark - W5CreateAccountVC Delegate

-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
