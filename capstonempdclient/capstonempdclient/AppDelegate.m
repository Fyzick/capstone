//
//  AppDelegate.m
//  capstonempdclient
//
//  Created by Samuel Harlan on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import <mpd/client.h>


@implementation AppDelegate
@synthesize portNumber = _portNumber;
@synthesize password = _password;
@synthesize serverName = _serverName;

@synthesize window = _window;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)quitProgram:(id)sender {
    [[NSApplication sharedApplication] terminate:nil];
}

- (IBAction)connectToServer:(id)sender {
    if (_password.stringValue.length == 0 || _portNumber.stringValue.length == 0 || _serverName.stringValue.length == 0) {
        NSLog(@"Enter port, server name, and password.");
    }
}
@end
