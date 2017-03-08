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


@end
