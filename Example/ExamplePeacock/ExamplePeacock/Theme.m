//
//  Created by Raimon Lapuente on 04/05/2015.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Theme.h"
#import "Peacock.h"

#import "BlueTextCell.h"
#import "GreenTextCell.h"
#import "ViewController.h"
#import "ButtonsViewController.h"
#import "ExamplePeacock-Swift.h"

@implementation Theme

+(void)applyTheme
{
    [[self class] navigationStyle];
    
    [[self class] tableStyle];
    
    [[self class] titleStyle];
    
    [[self class] textStyle];
    
    [[self class] cellStyle];
    
    [[self class] buttonStyle];
    
    [[self class] viewOnSwiftClass];
}

+(void)navigationStyle
{
    NSDictionary *titleTextAttributes = @{NSFontAttributeName : [[self class] titleFontWithSize:16.0f],
                                          NSForegroundColorAttributeName : [UIColor whiteColor],
                                          NSBackgroundColorAttributeName : [UIColor clearColor]};
    
    [[UINavigationBar appearance] setTitleTextAttributes:titleTextAttributes];
    [[UIBarButtonItem appearance] setTitleTextAttributes:titleTextAttributes
                                          forState:UIControlStateNormal];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor blackColor]];
    [[UINavigationBar appearance] setLYTranslucent:0];
    
    UIApplication *application = [UIApplication sharedApplication];
    [application setStatusBarStyle:UIStatusBarStyleLightContent];
}

+(void)tableStyle
{
    [[UITableView appearance] setBackgroundColor:[UIColor whiteColor]];
    
    UIColor *tableSeparatorColor = [UIColor grayColor];
    [[UITableView appearance] setAppearanceSeparatorColor:tableSeparatorColor];
    
    [[UITableViewHeaderFooterView appearance] setTintColor:[UIColor blackColor]];
    [[UILabel appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil] setTextColor:[UIColor blueColor]];
}

+(void)titleStyle
{
    [[TitleLabel appearance] setAppearanceTextColor:[UIColor grayColor]];
    [[TitleLabel appearance] setLYStrikeOut:YES];
    UIFont *font = [[self class] titleFontWithSize:17.0f];
    [[TitleLabel appearance] setAppearanceFont:font];
}

+(void)textStyle
{
    [[TextLabel appearance] setAppearanceTextColor:[UIColor blackColor]];
    UIFont *font = [[self class] textFontWithSize:12.0f];
    [[TextLabel appearance] setAppearanceFont:font];
}

+(void)cellStyle
{
    [[UILabel appearanceWhenContainedIn:[BlueTextCell class], nil] setAppearanceTextColor:[UIColor blueColor]];
    
    [[UILabel appearanceWhenContainedIn:[GreenTextCell class], nil] setAppearanceTextColor:[UIColor greenColor]];
}

+(void)buttonStyle
{
    UIColor *red = [UIColor redColor];
    UIColor *green = [UIColor greenColor];

    [[UIButton appearanceWhenContainedIn:[RedButtonView class], nil] setLYTextColor:red forState:UIControlStateNormal];
    [[UIButton appearanceWhenContainedIn:[RedButtonView class], nil] setLYTextColor:green forState:UIControlStateHighlighted];
}

+(void)viewOnSwiftClass
{
    UIColor *orange = [UIColor orangeColor];
    
    [[swiftView appearance] setBackgroundColor:orange];
}

+(UIFont *)titleFontWithSize:(NSUInteger)size
{
    return [UIFont fontWithName:@"HelveticaNeue-Bold" size:size];
}

+(UIFont *)textFontWithSize:(NSUInteger)size
{
    return [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:size];
}

@end
