#import "Obj2ViewController.h"

@interface Obj2ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation Obj2ViewController
- (IBAction)addPressed:(UIButton *)sender {
    int number = _textField.text.intValue;
    long numberPow = pow(2, number);
    if (number) {
        _label.text = [NSString stringWithFormat:@"%ld",numberPow];
    } else {
        _label.text = @"enter the number";
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _label.text = @"";
}

@end
