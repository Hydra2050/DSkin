//
//  DSystemViewController.m
//  DSkinDemo
//
//  Created by daniel on 14-3-13.
//  Copyright (c) 2014年 daniel. All rights reserved.
//

#import "DSystemViewController.h"
#import "DSkin.h"
#import "DBaseSkin.h"

@interface DSystemViewController ()

@end

@implementation DSystemViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(setting)];
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self.textField action:@selector(resignFirstResponder)]];
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self.textView action:@selector(resignFirstResponder)]];
    
    self.label.textColor = [DColor colorForKey:@"text"];
    self.textView.textColor = [DColor colorForKey:@"text"];
    self.textField.textColor = [DColor colorForKey:@"text"];
    
    self.label.backgroundColor = [DColor colorForKey:@"bg"];
    self.button.backgroundColor = [DColor colorForKey:@"bg"];
    self.segmentedControl.backgroundColor = [DColor colorForKey:@"bg"];
    self.textField.backgroundColor = [DColor colorForKey:@"bg"];
    self.slider.backgroundColor = [DColor colorForKey:@"bg"];
    self.switcher.backgroundColor = [DColor colorForKey:@"bg"];
    self.activity.backgroundColor = [DColor colorForKey:@"bg"];
    self.stepper.backgroundColor = [DColor colorForKey:@"bg"];
    self.imageView.backgroundColor = [DColor colorForKey:@"bg"];
    self.textView.backgroundColor = [DColor colorForKey:@"bg"];
    UIColor *bg = [DColor colorForKey:@"bg"];
    self.view.backgroundColor = bg;
    UIColor *aftbg = self.view.backgroundColor;
   BOOL isD = [self.view.backgroundColor isKindOfClass:[DObject class]];
    
    if (isD) {
        
    }
    
    [self.button setTitleColor:[DColor colorForKey:@"text"] forState:UIControlStateNormal];
    [self.button setTitleColor:[DColor colorForKey:@"textSel"] forState:UIControlStateHighlighted];
    
    self.slider.minimumTrackTintColor = [DColor colorForKey:@"min"];
    self.slider.maximumTrackTintColor = [DColor colorForKey:@"max"];
    self.slider.minimumValueImage = [DImage imageForKey:@"min"];
    self.slider.maximumValueImage = [DImage imageForKey:@"max"];
    
    self.switcher.onTintColor = [DColor colorForKey:@"on"];
//    self.switcher.tintColor = [DColor colorForKey:@""]
    self.switcher.onImage = [DImage imageForKey:@"on"];
    self.switcher.offImage = [DImage imageForKey:@"off"];
    
    self.activity.color = [DColor colorForKey:@"activity"];
    
    self.stepper.tintColor = [DColor colorForKey:@"on"];
    
    self.imageView.image = [DImage imageForKey:@"image"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)setting
{
    static BOOL b=NO;
    b=!b;
    [[DSkin defaultSkin] setSkin:[[DBaseSkin alloc] initWithFileName:b?@"night":@"daytime"]];
}
- (IBAction)redisplayClicked:(id)sender {
    [[DSkin defaultSkin] setNeedDisplayAllView];
}
@end
