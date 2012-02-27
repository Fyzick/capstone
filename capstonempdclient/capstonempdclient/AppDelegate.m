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
    struct mpd_connection * connection;
    connection = [MPDWrapper openConnectionWithPassword:_serverName.stringValue:_password.stringValue:_portNumber.stringValue];
    //connection = mpd_connection_new((char *)[hostname cStringUsingEncoding:[NSString defaultCStringEncoding]], 6600, 10000);
    if(connection)
    {
    
        [self loadSecondView:connection];
        struct mpd_stats * stats;
        stats = mpd_run_stats(connection);
        NSLog(@"%u", mpd_stats_get_number_of_artists(stats));
        mpd_search_db_songs(connection, FALSE);
        mpd_search_add_tag_constraint(connection, MPD_OPERATOR_DEFAULT, MPD_TAG_ARTIST, "jay-z");
        mpd_search_commit(connection);
        struct mpd_song * song = mpd_recv_song(connection);
        int i = 0;
        while (song!=NULL) {
            NSLog([NSString stringWithUTF8String:mpd_song_get_tag(song, MPD_TAG_TITLE, i)]);
            song = mpd_recv_song(connection);
        }
    }         
    else {
        NSLog([NSString stringWithUTF8String:mpd_connection_get_error_message(connection)]);
    }
}

@end
