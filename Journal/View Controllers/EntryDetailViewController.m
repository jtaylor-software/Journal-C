//
//  EntryDetailViewController.m
//  Journal
//
//  Created by Jeremy Taylor on 11/30/20.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"

@interface EntryDetailViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    if (!self.entry) return;
    
    self.titleTextField.text = self.entry.title;
    self.bodyTextTextView.text = self.entry.bodyText;
}
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    if (self.entry)
    {
        [[EntryController sharedInstance] updateEntry:self.entry title:self.titleTextField.text bodyText:self.bodyTextTextView.text];
    } else
    {
        [[EntryController sharedInstance] addEntryWithTitle:self.titleTextField.text bodyText:self.bodyTextTextView.text];
    }
    
    [self.navigationController popViewControllerAnimated:true];
}
- (IBAction)clearButtonTapped:(UIButton *)sender {
    self.titleTextField.text = @"";
    self.bodyTextTextView.text = @"";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end

