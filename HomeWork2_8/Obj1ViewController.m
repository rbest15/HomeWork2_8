#import "Obj1ViewController.h"

@interface Obj1ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *addButton;

@end

@implementation Obj1ViewController
- (IBAction)addPressed:(UIButton *)sender {
    NSString *concat = [_textLabel.text stringByAppendingString: _textField.text];
    NSString *concatWithSpace = [concat stringByAppendingString:@" "];
    _textLabel.text = concatWithSpace;
    _textField.text = @"";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _textLabel.text = @"";
}

@end
