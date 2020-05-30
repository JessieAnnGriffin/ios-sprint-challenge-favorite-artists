//
//  Artist.m
//  FavoriteArtists
//
//  Created by Jessie Ann Griffin on 5/29/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

#import "Artist.h"

@implementation Artist

- (instancetype)initWithName:(NSString *)artistName biography:(NSString *)artistBiography yearFormed:(int)yearFormed
{
    if (self = [super init]) {
        _artistName = artistName.copy;
        _artistBiography = artistBiography.copy;
        _yearFormed = yearFormed;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSDictionary *artistDictionary = [dictionary objectForKey:@"artists"]; //this key might return an array
    if (![dictionary isKindOfClass:[NSDictionary class]]) return nil;

    NSString *name = [artistDictionary objectForKey:@"strArtist"];
    if (![name isKindOfClass:[NSString class]]) return nil;

    NSString *biography = [artistDictionary objectForKey:@"strBiographyEN"];
    if (![biography isKindOfClass:[NSString class]]) return nil;

    NSNumber *year = [artistDictionary objectForKey:@"intFormedYear"];
    if (![year isKindOfClass:[NSNumber class]]) return nil;

    return [self initWithName:name.copy
                    biography:biography.copy
                   yearFormed:year.intValue];
}

@end
