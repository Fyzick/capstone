//
//  AppDelegate.h
//  capstonempdclient
//
//  Created by Samuel Harlan on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include "MPDWrapper.h"
#import <AppKit/AppKit.h>
@interface AppDelegate : NSObject <NSApplicationDelegate>

{
    NSTextField *_serverName;
    NSSecureTextField *_password;
    NSTextField *_portNumber;
    IBOutlet NSView *connectionView;
    IBOutlet NSView *connectedView;
    
    
}
- (IBAction)quitProgram:(id)sender;
- (IBAction)connectToServer:(id)sender;

@property (assign) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSTextField *serverName;
@property (strong) IBOutlet NSTextField *portNumber;
@property (strong) IBOutlet NSSecureTextField *password;
@end
