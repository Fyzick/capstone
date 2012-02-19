//
//  MPDWrapper.m
//  capstonempdclient
//
//  Created by Samuel Harlan on 2/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MPDWrapper.h"


@implementation MPDWrapper

+(struct mpd_connection *) openConnectionWithPassword:(NSString *) hostname:(NSString *) password:(NSString *) portnumber
{
    //NSLog(hostname);
    //NSLog(password);
    //NSLog(portnumber);
    //connection = mpd_connection_new((char *)[hostname cStringUsingEncoding:[NSString defaultCStringEncoding]], 6600, 10000);
    struct mpd_connection * newConnection;
    if ([hostname length] > 0 && [portnumber length] > 0) {
        if([password length] > 0)
        {
            newConnection = mpd_connection_new((char *)[hostname cStringUsingEncoding:[NSString defaultCStringEncoding]], [portnumber intValue], 10000);
            NSLog(@"Success");
            if (mpd_connection_get_error(newConnection) == MPD_ERROR_SUCCESS) {
                if(mpd_run_password(newConnection, (char *)[password cStringUsingEncoding:[NSString defaultCStringEncoding]]))
                {
                    NSLog(@"Password Success");
                    return newConnection;
                }
                else
                {
                    NSLog(@"Password Failure");
                    return nil;
                }
                
            }
            else
            {
                
                NSLog(@"no password");
                return nil;
                
            }
            
        }
    }
    
    return newConnection;
}

+(struct mpd_connection *) openConnectionWithoutPassword:(NSString *) hostname : (NSString *) portname
{
    return nil;
}

@end
