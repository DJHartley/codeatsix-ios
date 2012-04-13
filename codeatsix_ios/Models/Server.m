//
//  Server.m
//  codeatsix_ios
//
//  Created by Marin Usalj on 3/30/12.
//  Copyright (c) 2012 @mneorr | mneorr.com | linkedin.com/marin.usalj. All rights reserved.
//

#import "Server.h"

@implementation Server
static NSString *SERVER_URL = @"http://codeatsix.infinum.hr/";


+ (NSString*)serverSlash:(NSString *)path {
    return [[SERVER_URL stringByAppendingString:path] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

+ (NSString *)eventsURL {
    return [self serverSlash:@"events.json"];
}

+ (NSString *)signupURL {
    return [self serverSlash:@"apply.json"];
}

@end
