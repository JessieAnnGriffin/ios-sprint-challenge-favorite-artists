//
//  ArtistDetailViewController.h
//  FavoriteArtists
//
//  Created by Jessie Ann Griffin on 5/29/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Artist.h"


NS_ASSUME_NONNULL_BEGIN

@class ArtistController;

// This .h class is public presentation
@interface ArtistDetailViewController : UIViewController

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar;
@property (nonatomic) Artist *artist;
@property ArtistController *artistController;

@end

NS_ASSUME_NONNULL_END
