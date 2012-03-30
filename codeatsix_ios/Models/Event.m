//
//  Event.m
//  codeatsix_ios
//
//  Created by Marin Usalj on 3/30/12.
//  Copyright (c) 2012 @mneorr | mneorr.com | linkedin.com/marin.usalj. All rights reserved.
//

#import "Event.h"

@implementation Event
@synthesize body, slug, title, report, event_id, is_active, announcement, scheduled_at;

- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (!self) return nil;
    
    [self unpackFromDictionary:dict];
    
    return self;
}



#pragma mark - Private

- (NSDate *)initializeDateFromString:(NSString *)dateInString {
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    
    NSLog(@"INCOMING %@", dateInString);
    NSLog(@"PARSED: %@", [formatter dateFromString:dateInString]);
    return [formatter dateFromString:dateInString];
}

- (void)unpackFromDictionary:(NSDictionary *)dict {
    self.body = [dict valueForKey:@"body"];
    self.slug = [dict valueForKey:@"slug"];
    self.report = [dict valueForKey:@"report"];
    self.announcement = [dict valueForKey:@"announcement"];
    self.title = [dict valueForKey:@"title"];
    self.event_id = [dict valueForKey:@"id"];
    
    self.scheduled_at = [self initializeDateFromString:[dict valueForKey:@"scheduled_at"]];
}

#pragma mark - Public

- (NSString *)formattedEventDate {
    NSDateFormatter *formatter = [NSDateFormatter new];
    NSLog(@"SELF DATE: %@", self.scheduled_at.class);
    
    [formatter setDateFormat:@"WWW, dd.MM, yyyy hh:mm"];
    
    return [formatter stringFromDate:self.scheduled_at];
}



@end
