//
//  AppDelegate.h
//  ClipBoard
//
//  Created by Chris Ziraldo on 2013-05-15.
//  Copyright (c) 2013 Chris Ziraldo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    NSWindow *window;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem * statusItem;
}

@property (assign) IBOutlet NSWindow *window;

@end
