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
    } else if (event.type == NSEventTypeRotate) {
        NSLog(@"Rotation: %f", event.rotation);
    } else {
        NSLog(@"Unknown event type: %@", [self stringForEventType:event.type]);
        
        NSLog(@"Pressure: %f", event.pressure);
        NSLog(@"Rotation: %f", event.rotation);
        NSLog(@"Tilt X: %f, Tilt Y: %f", event.tilt.x, event.tilt.y);
    }
}

// Override changeModeWithEvent: method
- (void)changeModeWithEvent:(NSEvent *)event {
    // NSLog(@"Mode changed with event: %@", [self stringForEventType:event.type]);
    NSLog(@"Mode changed with event: %@", event);

}

// Helper method to convert NSEventType to string
- (NSString *)stringForEventType:(NSEventType)type {
    switch (type) {
        case NSEventTypeLeftMouseDown:
            return @"LeftMouseDown";
        case NSEventTypeLeftMouseUp:
            return @"LeftMouseUp";
        case NSEventTypeRightMouseDown:
            return @"RightMouseDown";
        case NSEventTypeRightMouseUp:
            return @"RightMouseUp";
        case NSEventTypeMouseMoved:
            return @"MouseMoved";
        case NSEventTypeLeftMouseDragged:
            return @"LeftMouseDragged";
        case NSEventTypeRightMouseDragged:
            return @"RightMouseDragged";
        case NSEventTypeMouseEntered:
            return @"MouseEntered";
        case NSEventTypeMouseExited:
            return @"MouseExited";
        case NSEventTypePressure:
            return @"Pressure";
        case NSEventTypeRotate:
            return @"Rotate";
        default:
            return [NSString stringWithFormat:@"Unknown (%lu)", type];
    }
}

// Example method to demonstrate secure coding
- (void)decodeWithCoder:(NSCoder *)coder {
    if ([coder allowsKeyedCoding]) {
        // Specify the exact class you expect to decode
        NSString *exampleString = [coder decodeObjectOfClass:[NSString class] forKey:@"exampleKey"];
        NSLog(@"Decoded string: %@", exampleString);
    }
}

@end
