//
//  MMDetailViewController.h
//  Master Detail
//
//  Created by Juan Miguel Marqués Morilla on 21/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMDetailViewController : UIViewController

@property (nonatomic,strong) NSString *username;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
