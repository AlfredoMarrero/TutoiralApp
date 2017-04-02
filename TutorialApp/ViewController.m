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
                
                Video *vid = [[Video init] alloc];
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
        [self.tableView reloadData]; });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {

}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

- (UITableViewCell*) tableView: (UITableView *) tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {

    return nil;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}


@end
