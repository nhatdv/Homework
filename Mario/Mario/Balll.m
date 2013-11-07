//
//  Balll.m
//  Mario
//
//  Created by MAC on 11/8/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "Balll.h"

@interface Balll ()

@end

@implementation Balll

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.image = [UIImage imageNamed:@"ball.png"];
    }
    return self;
}


@end
