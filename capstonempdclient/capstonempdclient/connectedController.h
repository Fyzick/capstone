//
//  connectedController.h
//  capstonempdclient
//
//  Created by Samuel Harlan on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface connectedController : NSViewController
{
    
    IBOutlet NSTextField *songTitle;
    IBOutlet NSTextField *songArtist;
    IBOutlet NSTextField *songAlbum;
    
}
- (IBAction)nextSong:(id)sender;
- (IBAction)playpause:(id)sender;
- (IBAction)prev:(id)sender;
@property (strong) IBOutlet NSTextField *songTitle;
@property (strong) IBOutlet NSTextField *songArtist;
@property (strong) IBOutlet NSTextField *songAlbum;


@end
