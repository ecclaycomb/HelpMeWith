//
//  inboxViewController.m
//  Ribbit
//
//  Created by JackNowacek on 12/8/13.
//  Copyright (c) 2013 JackNowacek. All rights reserved.
//

#import "inboxViewController.h"
#import <Parse/Parse.h>

@interface inboxViewController ()

@end

@implementation inboxViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        NSLog(@"current user: %@", currentUser.username);
    }
    else {
        [self performSegueWithIdentifier: @"showLogin" sender:self];
    }

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}



- (IBAction)logOut:(id)sender {
    [PFUser logOut];
    [self performSegueWithIdentifier: @"showLogin" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showLogin"]) {
        [segue.destinationViewController setHidesBottomBarWhenPushed: YES];
    }
}
@end
