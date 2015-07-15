//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Tyler Yan on 2015-07-14.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.contentSize = CGSizeMake(600, 600);
        self.panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                            action:@selector(didPan:)];
        [self addGestureRecognizer:self.panGestureRecognizer];
        self.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return self;
}

-(void)didPan:(UIPanGestureRecognizer*)pan{
    
    if (pan.state == UIGestureRecognizerStateBegan || pan.state == UIGestureRecognizerStateChanged) {
        CGPoint newPosition = [pan translationInView:pan.view];
        newPosition.x += pan.view.center.x;
        newPosition.y += pan.view.center.y;
        
        pan.view.center = newPosition;
        
        [pan setTranslation:CGPointZero inView:pan.view];
    }
    
}

@end
