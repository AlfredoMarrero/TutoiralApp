//
//  ViewController.m
//  TutorialApp
//
//  Created by Alfredo M. on 4/1/17.
//  Copyright © 2017 Alfredo M. All rights reserved.
//

#import "ViewController.h"
#import "HTTPService.h"
#import "Video.h"
#import "VideoCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *videoList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [[HTTPService instance] getTutorials: ^(NSArray *_Nullable dataArray, NSString * _Nullable errMessage) {
        if (dataArray) {
            
            NSMutableArray *arr = [[NSMutableArray alloc]init];
            
            for (NSDictionary *d in dataArray) {
                
                Video *vid = [[Video alloc] init];
                vid.videoTitle = [d objectForKey: @"title"];
                vid.videoDescription = [d objectForKey: @"description"];
                vid.thumbnailUrl = [d objectForKey:@"thumbnail"];
                vid.videoIframe = [d objectForKey: @"iframe"];
                
                [arr addObject: vid];
            }
            
            self.videoList =  arr;
            [self updateTableData];
            NSLog(@"Dictionary %@", dataArray.debugDescription);
        } else if (errMessage) {
        }
    }];
}
-(void) updateTableData {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {

    Video *video = [self.videoList objectAtIndex: indexPath.row];
    VideoCell *vidCell = (VideoCell*)cell;
    [vidCell updateUI: video];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

- (UITableViewCell*) tableView: (UITableView *) tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    VideoCell *cell = (VideoCell*)[tableView dequeueReusableCellWithIdentifier: @"main"];
    if (!cell) {
        cell = [[VideoCell alloc] init ];
    }
    
    return cell;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.videoList.count;
}


@end
