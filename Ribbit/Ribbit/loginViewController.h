//
//  loginViewController.h
//  Ribbit
//
//  Created by JackNowacek on 12/8/13.
//  Copyright (c) 2013 JackNowacek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)logIn:(id)sender;

@end
