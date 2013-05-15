//
//  AppDelegate.m
//  ClipBoard
//
//  Created by Chris Ziraldo on 2013-05-15.
//  Copyright (c) 2013 Chris Ziraldo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain]; 
    [statusItem setMenu:statusMenu];
    [statusItem setImage:[NSImage imageNamed:@"clip.png"]];
    [statusItem setTarget:self];
    [statusItem setAction:@selector(Click:)];
}

- (void)Click:(id)sender
{
    NSEvent *event = [NSApp currentEvent];
    if([event modifierFlags] & NSShiftKeyMask) {
        [self ShiftClick:sender];
    } else {
        [self LeftClick:sender];
    }
}

- (void)LeftClick:(id)sender
{
    NSPasteboard *pasteboard = [NSPasteboard generalPasteboard];
    NSString * tempString =  [pasteboard stringForType:NSPasteboardTypeString ];
    [pasteboard declareTypes:[NSArray arrayWithObject:NSPasteboardTypeString ] owner:nil];
    [pasteboard setString: tempString forType:NSPasteboardTypeString ];
}

- (void)ShiftClick:(id)sender
{
    [[NSApplication sharedApplication] terminate:self];
}





@end
