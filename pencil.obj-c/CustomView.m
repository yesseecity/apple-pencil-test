#import "CustomView.h"

@implementation CustomView

- (void)mouseDown:(NSEvent *)event {
    [self handleMouseEvent:event];
}

- (void)mouseDragged:(NSEvent *)event {
    [self handleMouseEvent:event];
}

- (void)handleMouseEvent:(NSEvent *)event {
    if (event.type == NSEventTypePressure) {
        NSLog(@"Pressure: %f", event.pressure);
    } else {
        NSLog(@"Pressure: %f", event.pressure);
    }
}

@end