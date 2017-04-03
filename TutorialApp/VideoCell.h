//
//  VideoCell.h
//  TutorialApp
//
//  Created by Alfredo M. on 4/1/17.
//  Copyright © 2017 Alfredo M. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Video;

@interface VideoCell : UITableViewCell

-(void) updateUI: (nonnull Video *) video;

@end
