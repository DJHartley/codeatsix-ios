//
//  EventsViewController.h
//  codeatsix_ios
//
//  Created by Marin Usalj on 3/30/12.
//  Copyright (c) 2012 @mneorr | mneorr.com | linkedin.com/marin.usalj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsManager.h"
#import "PersonDetailsViewController.h"

@interface EventsViewController : UIViewController<EventsManagerDelegate, UITableViewDelegate, UITableViewDataSource, PersonDetailsDelegate>


@property (strong, nonatomic) IBOutlet UIButton *eventDateButton;
@property (strong, nonatomic) IBOutlet UILabel *eventTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfParticipantsLabel;
@property (strong, nonatomic) IBOutlet UITextView *eventDescriptionTextView;
@property (strong, nonatomic) IBOutlet UIButton *signUpButton;
@property (strong, nonatomic) IBOutlet UIView *noEventsView;

- (IBAction)signUpPressed:(id)sender;
- (IBAction)addToCalendarPressed:(id)sender;

@end
