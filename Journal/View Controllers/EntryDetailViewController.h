//
//  EntryDetailViewController.h
//  Journal
//
//  Created by Jeremy Taylor on 11/30/20.
//

#import <UIKit/UIKit.h>
#import "EntryController.h"
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (nonatomic,strong) Entry *entry;

@end

NS_ASSUME_NONNULL_END
