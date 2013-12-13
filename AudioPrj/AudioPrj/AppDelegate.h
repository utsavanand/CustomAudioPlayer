//
//  AppDelegate.h
//  AudioPrj
//
//  Created by utsavanand on 12/12/13.
//  Copyright (c) 2013 Utsav Anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UINavigationController *navController;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navController;
@property (nonatomic, retain) ViewController *viewController;

@end
