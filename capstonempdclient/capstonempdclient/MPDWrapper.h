//
//  MPDWrapper.h
//  capstonempdclient
//
//  Created by Samuel Harlan on 2/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <mpd/client.h>
@interface MPDWrapper : NSObject
+(struct mpd_connection *) openConnectionWithPassword:(NSString *) hostname:(NSString *) password:(NSString *) portnumber;
+(struct mpd_connection *) openConnectionWithoutPassword:(NSString *) hostname:(NSString *) portnumber;
+(NSMutableArray *) getSongListForArtist:(struct mpd_connection *) connection:(NSString *) artist;
+(NSMutableArray *) getSongListForGenre:(struct mpd_connection *) connection:(NSString *) genre;
+(NSMutableArray *) getSongListForAlbum:(struct mpd_connection *) connection:(NSString *) album;
                    
@end
