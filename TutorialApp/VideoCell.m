//
//  VideoCell.m
//  TutorialApp
//
//  Created by Alfredo M. on 4/1/17.
//  Copyright © 2017 Alfredo M. All rights reserved.
//

#import "VideoCell.h"
#import "Video.h"

@interface VideoCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLbl;
@property (weak, nonatomic) IBOutlet UIImageView *thumbImg;
@property (weak, nonatomic) IBOutlet UIView *cellView;

@end


@implementation VideoCell

- (void)awakeFromNib {
    
    _cellView.layer.cornerRadius = 2.0;
    _cellView.layer.shadowColor = [UIColor colorWithRed:157.0 / 255.0 green:157.0 / 255.0 blue:157.0 / 255.0 alpha:0.8].CGColor;
    _cellView.layer.shadowOpacity = 0.8;
    _cellView.layer.shadowRadius = 5.0;
    _cellView.layer.shadowOffset = CGSizeMake(0.0, 2.0);
}

-(void) updateUI:(nonnull Video *)video {
    self.titleLbl.text = video.videoTitle;
    self.descriptionLbl.text = video.videoDescription;
    NSLog(@"VID: %@",video.videoDescription);
    
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:video.thumbnailUrl]]];
    self.thumbImg.image = image;

    
}

@end
