//
//  ViewController.m
//  SKAlertController
//
//  Created by Wei on 16/12/21.
//
//

#import "ViewController.h"
#import "SKAlertController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *alertButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [alertButton setTitle:@"弹出" forState:UIControlStateNormal];
    alertButton.frame = CGRectMake(100, 100, SCREEN_WIDTH-200, 50);
    alertButton.layer.cornerRadius = 10;
    alertButton.backgroundColor = [UIColor greenColor];
    [alertButton addTarget:self action:@selector(alertButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertButton];
    


    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)alertButtonAction:(UIButton *)sender{
    SKAlertController *controller = [SKAlertController alertControllerWithTitle:@"标题标题标题标题标题标题标题标题标题" message:@"这里是消息这里是消息这里是消息这里是消息这里是消息这里是消息这里是消息"];
    SKAlertAction *action1 = [SKAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了取消");
    }];
    
    SKAlertAction *action2 = [SKAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了确定");
    }];
    [controller addAction:action1];
    [controller addAction:action2];
    [self presentViewController:controller animated:YES completion:^{
    }];
    
    
}
@end
