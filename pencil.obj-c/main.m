//
//  main.m
//  pencil.obj-c
//
//  Created by Tid on 2024/12/27.
//

#import <Cocoa/Cocoa.h>
#import "CustomView.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSApplication *app = [NSApplication sharedApplication];
        NSRect frame = NSMakeRect(0, 0, 800, 600);
        NSWindow *window = [[NSWindow alloc] initWithContentRect:frame
                                                       styleMask:(NSWindowStyleMaskTitled |NSWindowStyleMaskClosable | NSWindowStyleMaskResizable)
                                                         backing:NSBackingStoreBuffered
                                                           defer:NO];
        [window setTitle:@"Pressure Test"];
        CustomView *view = [[CustomView alloc] initWithFrame:frame];
        [window setContentView:view];
        [window makeKeyAndOrderFront:nil];
        [app run];
    }
    return 0;
}
