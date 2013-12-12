//
//  AudioCell.m
//  AudioPrj
//
//  Created by utsavanand on 13/12/13.
//  Copyright (c) 2013 Utsav Anand. All rights reserved.
//

#import "AudioCell.h"

@implementation AudioCell
@synthesize  audioTitle;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.audioTitle = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 100, 40)];
        self.audioTitle.textColor = [UIColor blackColor];
        self.audioTitle.font = [UIFont fontWithName:@"Arial" size:12.0f];
        
        [self addSubview:self.audioTitle];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
