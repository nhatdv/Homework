//
//  run.m
//  Mario
//
//  Created by MAC on 11/5/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "City.h"

@interface City ()

@end

@implementation City

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.image = [UIImage imageNamed:@"City_street.jpg"];
    }
    return self;
}

 

@end
