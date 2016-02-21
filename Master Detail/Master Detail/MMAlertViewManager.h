//
//  MMAlertViewManager.h
//  Master Detail
//
//  Created by Juan Miguel Marqués Morilla on 21/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import  <UIKit/UIKit.h>



@interface MMAlertViewManager : NSObject

+(instancetype)sharedInstance;

-(void)showErrorMessage:(NSString*)message withTitle:(NSString *)title inController:(UIViewController*)viewController;

@end
