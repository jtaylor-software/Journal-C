//
//  Entry.m
//  Journal
//
//  Created by Jeremy Taylor on 11/30/20.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTimestamp:(NSDate *)timestamp title:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    
    if (self) {
        _timestamp = [NSDate date];
        _title = title;
        _bodyText = bodyText;
    }
    
    return self;
}

@end
