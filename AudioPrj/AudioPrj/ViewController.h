//
//  ViewController.h
//  AudioPrj
//
//  Created by utsavanand on 12/12/13.
//  Copyright (c) 2013 Utsav Anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, AVAudioPlayerDelegate, UIGestureRecognizerDelegate>{
    AVAudioPlayer *audioPlayer;
    UITableView *audioTable;
}

@property (retain, nonatomic) UITableView *audioTable;
@property (retain, nonatomic) UISlider *aSlider;

@property  NSInteger activeRow;
@property BOOL allowFrameChange;

-(IBAction) playAudio;
-(IBAction) stopAudio;
@end
