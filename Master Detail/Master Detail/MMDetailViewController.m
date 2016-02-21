//
//  MMDetailViewController.m
//  Master Detail
//
//  Created by Juan Miguel Marqués Morilla on 21/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import "MMDetailViewController.h"

@interface MMDetailViewController ()

@property (nonatomic, retain) NSTimer *timer;

@end

@implementation MMDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];

    [self configureUI];
    
}


-(void)configureUI{
    
    [self configureTimer];
    
    self.userLabel.text = [NSString stringWithFormat:@"Hello %@",self.username];
    
}


-(void)updateTime{
    
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"dd/MM/yyyy HH:mm:ss.SSS"];
    self.dateLabel.text = [dateFormatter stringFromDate:[NSDate date]];
    [self.dateLabel sizeToFit];
    
}


-(void)configureTimer{
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDate *oneMinuteInFuture = [[NSDate date] dateByAddingTimeInterval:.5];
    
    NSDateComponents *components = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:oneMinuteInFuture];
    
    NSDate *nextMinuteBoundary = [calendar dateFromComponents:components];
    
    self.timer = [[NSTimer alloc] initWithFireDate:nextMinuteBoundary interval:.5 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    
}

@end
