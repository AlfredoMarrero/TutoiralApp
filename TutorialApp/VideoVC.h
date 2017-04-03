//
//  VideoVC.h
//  TutorialApp
//
//  Created by Alfredo M. on 4/3/17.
//  Copyright © 2017 Alfredo M. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoVC : UIViewController <UIWebViewDelegate>
@property (nonatomic, strong) Video *video;
@end
