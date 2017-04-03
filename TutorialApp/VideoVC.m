//
//  VideoVC.m
//  TutorialApp
//
//  Created by Alfredo M. on 4/3/17.
//  Copyright © 2017 Alfredo M. All rights reserved.
//

#import "VideoVC.h"
#import "Video.h"

@interface VideoVC ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLbl;

@end

@implementation VideoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLbl.text = self.video.videoTitle;
    self.descriptionLbl.text = self.video.videoDescription;
}

- (IBAction)donePressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
