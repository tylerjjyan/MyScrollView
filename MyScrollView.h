//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Tyler Yan on 2015-07-14.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView
@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGestureRecognizer;


-(void)didPan:(UIPanGestureRecognizer*)pan;
- (instancetype)initWithCoder:(NSCoder *)coder;


@end
