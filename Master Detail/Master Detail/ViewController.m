//
//  ViewController.m
//  Master Detail
//
//  Created by Juan Miguel Marqués Morilla on 21/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import "ViewController.h"
#import "MMAlertViewManager.h"
#import "MMDetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitAction:(id)sender {
    
    if (self.textField.text.length > 0) {
        
        MMDetailViewController *detail = [[MMDetailViewController alloc] initWithNibName:nil bundle:nil];
        
        detail.username = self.textField.text;
        
        [(UINavigationController*)self.navigationController pushViewController:detail animated:YES];

        
    }else{
        
        [[MMAlertViewManager sharedInstance]showErrorMessage:@"The textfield is empty" withTitle:@"Ooops" inController:self];
    }
    
}
@end
