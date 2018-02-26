//
//  ViewController.m
//  IMPTrackingView
//
//  Created by Sureshkumar Linganathan on 14/07/16.
//  Copyright © 2016 . All rights reserved.
//

#import "ViewController.h"
#import "IMPTrackingView.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet IMPTrackingView *trackingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.trackingView.statusArray = [[NSMutableArray alloc]init];
    [self.trackingView.statusArray addObject:@"payment"];
    [self.trackingView.statusArray addObject:@"Apporoval"];
    [self.trackingView .statusArray addObject:@"Shipping"];
    [self.trackingView.statusArray addObject:@"In-Transistant"];
    [self.trackingView.statusArray addObject:@"Delivery"];
    [self.trackingView.statusArray addObject:@"Delivery"];
    self.trackingView.statusCount = 4;
    [self.trackingView initWithView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
