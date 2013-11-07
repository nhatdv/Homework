//
//  Run.m
//  Mario
//
//  Created by MAC on 11/5/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "Run.h"

@interface Run ()

@end

@implementation Run
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSMutableArray *imageList = [NSMutableArray new];
        for (int i=1;i<=16;i++)
        {
            [imageList addObject:[UIImage imageNamed:[NSString stringWithFormat:@"walker-%d.png",i]]];
        }
        self.animationImages = [[NSArray alloc]initWithArray:imageList];
        self.animationDuration= 1.0f;
        self.animationRepeatCount=0;
    }
    return self;
}


@end
