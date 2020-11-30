//
//  EntryController.m
//  Journal
//
//  Created by Jeremy Taylor on 11/30/20.
//

#import "EntryController.h"

@implementation EntryController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    Entry *newEntry = [[Entry alloc] initWithTimestamp:[NSDate date] title:title bodyText:bodyText];
    [_entries addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry
{
    [_entries removeObject:entry];
}

- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timestamp = [NSDate date];
}


@end
