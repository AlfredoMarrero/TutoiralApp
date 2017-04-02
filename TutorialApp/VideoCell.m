//
//  VideoCell.m
//  TutorialApp
//
//  Created by Alfredo M. on 4/1/17.
//  Copyright © 2017 Alfredo M. All rights reserved.
//

#import "VideoCell.h"

@interface VideoCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;

@property (weak, nonatomic) IBOutlet UILabel *descriptionLbl;

@property (weak, nonatomic) IBOutlet UIImageView *thumbImg;
@property (weak, nonatomic) IBOutlet UIView *cellView;

@end


@implementation VideoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.layer.cornerRadius = 2.0;
    self.layer.shadowColor = [UIColor colorWithRed: 157.0/255.0 green: 157.0/255.0 blue: 157.0/255.0 alpha: 0.8].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.0, 2.0);
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
