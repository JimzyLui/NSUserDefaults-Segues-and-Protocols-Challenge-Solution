//
//  W5SignInVC.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Jimzy Lui on 11/14/2013.
//  Copyright (c) 2013 Jimzy Lui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "W5CreateAccountVC.h"

@interface W5SignInVC : UIViewController<W5CreateAccountVCDelegate>

@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)loginButtonPressed:(UIButton *)sender;
- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
