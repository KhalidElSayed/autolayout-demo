//
//  MyView.m
//  Layout
//
//  Created by Shagun Madhikarmi on 12/02/2014.
//  Copyright (c) 2014 ustwo. All rights reserved.
//

#import "MyView.h"
#import "Masonry.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setup];
}


#pragma mark - Setup

- (void)setup
{
    self.backgroundColor = [UIColor grayColor];
    
    [self setupView1];
    [self setupTitleLabel];
}

static const CGFloat kDefaultInset = 20;

- (void)setupView1
{
    UIView *superview = self;
    
    self.backgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    self.backgroundView.backgroundColor = [UIColor yellowColor];
    self.backgroundView.translatesAutoresizingMaskIntoConstraints = NO;
    [superview addSubview:self.backgroundView];
    [superview addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:self.backgroundView
                                                             attribute:NSLayoutAttributeTop
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:superview
                                                             attribute:NSLayoutAttributeTop
                                                            multiplier:1
                                                              constant:kDefaultInset],

                                [NSLayoutConstraint constraintWithItem:self.backgroundView
                                                             attribute:NSLayoutAttributeLeft
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:superview
                                                             attribute:NSLayoutAttributeLeft
                                                            multiplier:1.0
                                                              constant:kDefaultInset],
                                
                                [NSLayoutConstraint constraintWithItem:self.backgroundView
                                                             attribute:NSLayoutAttributeBottom
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:superview
                                                             attribute:NSLayoutAttributeBottom
                                                            multiplier:1.0
                                                              constant:-kDefaultInset],
                                
                                [NSLayoutConstraint constraintWithItem:self.backgroundView
                                                             attribute:NSLayoutAttributeRight
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:superview
                                                             attribute:NSLayoutAttributeRight
                                                            multiplier:1
                                                              constant:-kDefaultInset],
                                ]];
    
//    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
//    
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(superview.mas_top).with.offset(padding.top); //with is an optional semantic filler
//        make.left.equalTo(superview.mas_left).with.offset(padding.left);
//        make.bottom.equalTo(superview.mas_bottom).with.offset(-padding.bottom);
//        make.right.equalTo(superview.mas_right).with.offset(-padding.right);
//    }];
}

- (void)setupTitleLabel
{
    UIView *superview = self;
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.titleLabel.backgroundColor = [UIColor purpleColor];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [superview addSubview:self.titleLabel];
    [superview addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                             attribute:NSLayoutAttributeTop
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.backgroundView
                                                             attribute:NSLayoutAttributeTop
                                                            multiplier:1.0
                                                              constant:kDefaultInset],
                                
                                [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                toItem:nil
                                                             attribute:NSLayoutAttributeWidth
                                                            multiplier:1.0
                                                              constant:100],
                                
                                [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationLessThanOrEqual
                                                                toItem:nil
                                                             attribute:NSLayoutAttributeWidth
                                                            multiplier:1.0
                                                              constant:200],
                                
                                
                                [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                             attribute:NSLayoutAttributeRight
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.backgroundView
                                                             attribute:NSLayoutAttributeRight
                                                            multiplier:1.0
                                                              constant:-kDefaultInset],
                                ]];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSLog(@"view1.frame: %@", NSStringFromCGRect(self.backgroundView.frame));
    NSLog(@"self.frame: %@", NSStringFromCGRect(self.frame));
}
@end
