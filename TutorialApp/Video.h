//
//  Video.h
//  TutorialApp
//
//  Created by Alfredo M. on 4/2/17.
//  Copyright © 2017 Alfredo M. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video : NSObject

@property (nonatomic, strong) NSString *videoTitle;
@property (nonatomic, strong) NSString *videoDescription;
@property (nonatomic, strong) NSString *videoIframe;
@property (nonatomic, strong) NSString *thumbnailUrl;

@end
