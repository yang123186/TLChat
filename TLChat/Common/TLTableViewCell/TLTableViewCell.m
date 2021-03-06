//
//  TLTableViewCell.m
//  TLChat
//
//  Created by 李伯坤 on 16/1/23.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#import "TLTableViewCell.h"

@implementation TLTableViewCell

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _leftSeparatorSpace = 10.0f;
        _topLineStyle = TLCellLineStyleNone;
        _bottomLineStyle = TLCellLineStyleDefault;
    }
    return self;
}

- (void) setTopLineStyle:(TLCellLineStyle)topLineStyle
{
    _topLineStyle = topLineStyle;
    [self setNeedsDisplay];
}

- (void) setBottomLineStyle:(TLCellLineStyle)bottomLineStyle
{
    _bottomLineStyle = bottomLineStyle;
    [self setNeedsDisplay];
}

- (void) setLeftSeparatorSpace:(CGFloat)leftSeparatorSpace
{
    _leftSeparatorSpace = leftSeparatorSpace;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    CGContextSetStrokeColorWithColor(context, [UIColor colorCellLine].CGColor);
    if (self.topLineStyle != TLCellLineStyleNone) {
        CGContextBeginPath(context);
        CGFloat startX = (self.topLineStyle == TLCellLineStyleFill ? 0 : _leftSeparatorSpace);
        CGFloat endX = WIDTH_SCREEN;
        CGFloat y = 0;
        CGContextMoveToPoint(context, startX, y);
        CGContextAddLineToPoint(context, endX, y);
        CGContextStrokePath(context);
    }
    if (self.bottomLineStyle != TLCellLineStyleNone) {
        CGContextBeginPath(context);
        CGFloat startX = (self.bottomLineStyle == TLCellLineStyleFill ? 0 : _leftSeparatorSpace);
        CGFloat endX = WIDTH_SCREEN;
        CGFloat y = self.height;
        CGContextMoveToPoint(context, startX, y);
        CGContextAddLineToPoint(context, endX, y);
        CGContextStrokePath(context);
    }
}

@end
