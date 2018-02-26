//
//  IMPTrackingView.m
//  IMPTrackingView
//
//  Created by Sureshkumar Linganathan on 14/07/16.
//  
//

#import "IMPTrackingView.h"

#define viewBackgroudColor  [UIColor colorWithRed:144.0/255.0 green:189.0/255.0 blue:179.0/255.0 alpha:1.0]
#define  unFillBackgroundColor [UIColor colorWithRed:214.0/255.0 green:214.0/255.0 blue:214.0/255.0 alpha:1.0]

#define labelFont [UIFont fontWithName:@"Arial" size:8.0];
#define  viewStartingPosition 10
#define circleYPosition self.screenSize.height/2
#define lineViewHeight 5
#define circleViewHeight 20
#define  lineViewStartingPosition 28


@interface IMPTrackingView ()

@property (nonatomic, assign) CGSize screenSize;
@property (nonatomic, assign) NSInteger nextCirclePosition;

@end

@implementation IMPTrackingView


-(void)initWithView
{
    self. screenSize = self.bounds.size;
    [self createCardEffectForView];
    self.noOfCircles = 5;
    self.nextCirclePosition = 0;
    for(int i =0 ;i<_noOfCircles;i++)
    {
        [self generateLineView:i];
        self.nextCirclePosition = i*65;
    }
    self.nextCirclePosition = 0;
    for(int i =0;i <_noOfCircles;i++)
    {
        self.nextCirclePosition = i*65;
        [self createCircle:i];
        [self createLabel:[self.statusArray objectAtIndex:i] withCount:i];
    }
}

-(void)generateLineView:(NSInteger)count
{
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(lineViewStartingPosition+self.nextCirclePosition,(circleYPosition+circleViewHeight/2-lineViewHeight/2),65,lineViewHeight)];
    lineView.layer.cornerRadius = 2;
    if(count<self.statusCount)
    {
        lineView.backgroundColor = viewBackgroudColor;
    }
    else{
        
        lineView.backgroundColor = unFillBackgroundColor;
    }
    [self addSubview:lineView];
}

-(void)createCardEffectForView
{
    CALayer *layer = self.layer;
    [layer setMasksToBounds:NO];
    layer.shadowOffset = CGSizeMake(3, 3);
    layer.shadowColor = [UIColor lightGrayColor].CGColor;
    layer.shadowRadius = 3.0f;
    layer.shadowOpacity = 1.0f;
    layer.borderWidth = 0.5;
    layer.borderColor = [UIColor lightGrayColor].CGColor;
}


-(void)createCircle:(NSInteger)count
{
    UIView *circle = [[UIView alloc]initWithFrame:CGRectMake(viewStartingPosition+self.nextCirclePosition, self.screenSize.height/2, 20, circleViewHeight)];
    circle.layer.cornerRadius = 10;
    if(count<self.statusCount)
    {
        circle.backgroundColor = viewBackgroudColor;
    }else
    {
        circle.backgroundColor = unFillBackgroundColor;
    }
    [self addSubview:circle];
}

-(void)createLabel:(NSString*)statusText withCount:(NSInteger)count
{
    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(viewStartingPosition+self.nextCirclePosition -10,  self.screenSize.height/2+20, 50, 20)];
    textLabel.numberOfLines = 1;
    textLabel.textAlignment = NSTextAlignmentCenter;
    textLabel.font = labelFont;
    textLabel.text = statusText;
    if(count<self.statusCount)
    {
        textLabel.textColor = viewBackgroudColor;
    }
    else{
        textLabel.textColor = unFillBackgroundColor;
    }
    [self addSubview:textLabel];
}


@end
