//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import "UITextField+LYAppearance.h"

@implementation UITextField (LYAppearance)

- (void)setLYAppearanceFont:(UIFont*)font
{
    [self setFont:font];
}

-(UIFont *)LYAppearanceFont
{
    return self.font;
}

#pragma mark - appearanceTextColor

-(UIColor *)LYAppearanceTextColor
{
    return self.textColor;
}

-(void)setLYAppearanceTextColor:(UIColor *)textColor
{
    [self setTextColor:textColor];
}

#pragma mark - text alignment

-(void)setLYAppearanceTextAlignment:(NSTextAlignment)textAlignment
{
    [self setTextAlignment:textAlignment];
}

-(NSTextAlignment)LYAppearanceTextAlignment
{
    return self.textAlignment;
}

@end
