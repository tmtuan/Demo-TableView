//
//  ViewController.m
//  Demo-TableView
//
//  Created by ThaoLT on 3/8/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *tfs;

@end

@implementation ViewController

@synthesize tableView = _tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    
    self.tfs = [NSArray arrayWithObjects:@"Tuan", @"Petteri", @"Quan", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Methods for tableview

// How many sections do I have
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// How many row in the selected section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tfs.count;
}

// What does a cell look like?
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // if there is no cell in the cache
    if (cell == nil) {
        // allocate cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self.tfs objectAtIndex:indexPath.row];
    
    return cell;
}


@end
