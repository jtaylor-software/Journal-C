//
//  Entry.h
//  Journal
//
//  Created by Jeremy Taylor on 11/30/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, strong) NSDate *timestamp;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *bodyText;

- (instancetype) initWithTimestamp:(NSDate *)timestamp
                             title:(NSString *)title
                              bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
