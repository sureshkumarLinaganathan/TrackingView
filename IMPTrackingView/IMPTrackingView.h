//
//  IMPTrackingView.h
//  IMPTrackingView
//
//  Created by Sureshkumar Linganathan on 14/07/16.
//  Copyright © 2016 Impiger Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IMPTrackingView : UIView

@property (nonatomic, assign)NSInteger statusCount;
@property (nonatomic,assign) NSInteger noOfCircles;
@property (nonatomic,strong)NSMutableArray  *statusArray;
-(void)initWithView;

@end