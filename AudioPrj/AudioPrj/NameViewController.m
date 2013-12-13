//
//  NameViewController.m
//  AudioPrj
//
//  Created by utsavanand on 13/12/13.
//  Copyright (c) 2013 Utsav Anand. All rights reserved.
//

#import "NameViewController.h"

@interface NameViewController ()

@end

@implementation NameViewController
@synthesize nameTable;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)createData{
    NSArray *newArray = [[NSArray alloc] initWithObjects:@"Utsav",@"Anand", nil];
    nameContainer = newArray;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createData];
    
    nameTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    nameTable.delegate = self;
    nameTable.dataSource = self;
    [self.view addSubview:nameTable];
    self.title = @"Names";
    self.view.backgroundColor = [UIColor redColor];
	// Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [nameContainer count];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"nameCell";
    UITableViewCell *cell = [self.nameTable dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
                cell.textLabel.text = [nameContainer objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
