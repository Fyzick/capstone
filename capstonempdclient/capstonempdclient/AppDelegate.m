//
//  AppDelegate.m
//  capstonempdclient
//
//  Created by Samuel Harlan on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"


@implementation AppDelegate
@synthesize password = _password;
@synthesize portNumber = _portNumber;
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
    if ( _portNumber.stringValue.length == 0 || _serverName.stringValue.length == 0) {
        NSLog(@"Enter port, server name.");
    }else
    {
       // struct mpd_connection * mpdconnection;
       // NSString * hostname = _password.stringValue;
        //mpdconnection = mpd_connection_new((char *)[hostname cStringUsingEncoding:[NSString defaultCStringEncoding]], 6600, 10000);
    }
}
@end
