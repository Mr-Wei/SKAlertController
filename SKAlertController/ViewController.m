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
    [alertButton setTitle:@"一行" forState:UIControlStateNormal];
    alertButton.frame = CGRectMake(100, 100, SCREEN_WIDTH-200, 50);
    alertButton.layer.cornerRadius = 10;
    alertButton.backgroundColor = [UIColor greenColor];
    [alertButton addTarget:self action:@selector(alertButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertButton];
    
    UIButton *alertButton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [alertButton1 setTitle:@"两行" forState:UIControlStateNormal];
    alertButton1.frame = CGRectMake(100, 100+60, SCREEN_WIDTH-200, 50);
    alertButton1.layer.cornerRadius = 10;
    alertButton1.backgroundColor = [UIColor greenColor];
    [alertButton1 addTarget:self action:@selector(alertButtonAction1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertButton1];
    
    UIButton *alertButton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [alertButton2 setTitle:@"三行" forState:UIControlStateNormal];
    alertButton2.frame = CGRectMake(100, 100+120, SCREEN_WIDTH-200, 50);
    alertButton2.layer.cornerRadius = 10;
    alertButton2.backgroundColor = [UIColor greenColor];
    [alertButton2 addTarget:self action:@selector(alertButtonAction2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertButton2];
    
    UIButton *alertButton3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [alertButton3 setTitle:@"一行带标题" forState:UIControlStateNormal];
    alertButton3.frame = CGRectMake(100, 100+180, SCREEN_WIDTH-200, 50);
    alertButton3.layer.cornerRadius = 10;
    alertButton3.backgroundColor = [UIColor greenColor];
    [alertButton3 addTarget:self action:@selector(alertButtonAction3:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertButton3];
    
    UIButton *alertButton4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [alertButton4 setTitle:@"两行带标题" forState:UIControlStateNormal];
    alertButton4.frame = CGRectMake(100, 100+240, SCREEN_WIDTH-200, 50);
    alertButton4.layer.cornerRadius = 10;
    alertButton4.backgroundColor = [UIColor greenColor];
    [alertButton4 addTarget:self action:@selector(alertButtonAction4:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertButton4];
    
    UIButton *alertButton5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [alertButton5 setTitle:@"三行带标题" forState:UIControlStateNormal];
    alertButton5.frame = CGRectMake(100, 100+300, SCREEN_WIDTH-200, 50);
    alertButton5.layer.cornerRadius = 10;
    alertButton5.backgroundColor = [UIColor greenColor];
    [alertButton5 addTarget:self action:@selector(alertButtonAction5:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertButton5];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)alertButtonAction:(UIButton *)sender{
    SKAlertController *controller = [SKAlertController alertControllerWithTitle:@"" message:@"这里是消息这这里是消息"];
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
-(void)alertButtonAction1:(UIButton *)sender{
    SKAlertController *controller = [SKAlertController alertControllerWithTitle:@"" message:@"这里是消息这里是消息这里是消息这里是消息"];
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
-(void)alertButtonAction2:(UIButton *)sender{
    SKAlertController *controller = [SKAlertController alertControllerWithTitle:@"" message:@"这里是消息这里是消息这里是消息这里是消息这里是消息这里是消息这里是消息"];
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
-(void)alertButtonAction3:(UIButton *)sender{
    SKAlertController *controller = [SKAlertController alertControllerWithTitle:@"标题标题" message:@"这里是里是消息"];
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
-(void)alertButtonAction4:(UIButton *)sender{
    SKAlertController *controller = [SKAlertController alertControllerWithTitle:@"标题标题" message:@"这里是消息这里是消息这息这息这里是消息这里是消息"];
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
-(void)alertButtonAction5:(UIButton *)sender{
    SKAlertController *controller = [SKAlertController alertControllerWithTitle:@"标题" message:@"这里是消息这里是消息这里是消息这里是消息这里是消息这里是消息这里是消息"];
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
