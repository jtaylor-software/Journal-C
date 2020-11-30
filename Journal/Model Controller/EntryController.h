//
//  EntryController.h
//  Journal
//
//  Created by Jeremy Taylor on 11/30/20.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

+ (EntryController *)sharedInstance;
- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
- (void)removeEntry:(Entry *)entry;
- (void)updateEntry:(Entry *)entry title: (NSString *)title bodyText:(NSString *)bodyText;

@property (nonatomic, copy) NSMutableArray *entries;



@end

NS_ASSUME_NONNULL_END
