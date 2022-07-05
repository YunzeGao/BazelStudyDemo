//
//  ViewController.m
//  DemoOC
//
//  Created by Gao on 2022/7/4.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *tipsLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

# pragma mark - private methods

- (void)setupUI {
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.view addSubview:self.tipsLabel];
    [self.tipsLabel setText:@"Hello Bazel!"];
}

# pragma mark - setters & getters

- (UILabel *)tipsLabel {
    if (!_tipsLabel) {
        CGFloat width = 121;
        CGFloat height = 80;
        CGFloat x = ([UIScreen mainScreen].bounds.size.width - width ) / 2;
        CGFloat y = ([UIScreen mainScreen].bounds.size.height - height ) / 2;
        _tipsLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, y, width, height)];
        [_tipsLabel setFont:[UIFont systemFontOfSize:22 weight:UIFontWeightBold]];
        [_tipsLabel setTextColor:[UIColor redColor]];
    }
    return _tipsLabel;
}



@end
