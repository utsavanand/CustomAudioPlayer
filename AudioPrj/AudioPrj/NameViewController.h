//
//  NameViewController.h
//  AudioPrj
//
//  Created by utsavanand on 13/12/13.
//  Copyright (c) 2013 Utsav Anand. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NameViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    UITableView *nameTable;
    NSArray *nameContainer;
}

@property (nonatomic, retain) UITableView *nameTable;

@end
