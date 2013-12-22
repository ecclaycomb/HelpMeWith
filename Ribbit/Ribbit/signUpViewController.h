//
//  signUpViewController.h
//  Ribbit
//
//  Created by JackNowacek on 12/8/13.
//  Copyright (c) 2013 JackNowacek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface signUpViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;

- (IBAction)signUp:(id)sender;

@end
