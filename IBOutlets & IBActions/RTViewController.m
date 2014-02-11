//
//  RTViewController.m
//  IBOutlets & IBActions
//
//  Created by Ryo Tulman on 2/6/14.
//  Copyright (c) 2014 Ryo Tulman. All rights reserved.
//

#import "RTViewController.h"

@interface RTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

NSInteger toggleCount;
NSInteger logCount;
NSString *logString;

@implementation RTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([self.title isEqualToString:@"firstView"]) {
            [self.view setBackgroundColor:[UIColor yellowColor]];
    }
    logCount = 0;
    toggleCount = 0;
}
- (IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)changeBackgroundColor:(id)sender {
    UIColor *newBGColor = [UIColor cyanColor];
    if ([self.view.backgroundColor isEqual:newBGColor]) {
        [self.view setBackgroundColor:[UIColor yellowColor]];
    } else {
        [self.view setBackgroundColor:newBGColor];
    }
}
- (IBAction)logToConsole:(id)sender {
    logCount++;
    logString = [NSString stringWithFormat:@"Log to console count: %ld", (long)logCount];
    NSLog(logString);
    [_label setText:logString];
}
- (IBAction)toggled:(id)sender {
    if (toggleCount > 1 && toggleCount%2 == 0) {
        NSLog(@"Again, eh? It's ok, my CPU is pretty OCD too.");
    } else if (toggleCount > 0) {
        NSLog(@"Switched off.");
    } else {
        NSLog(@"Switched on.");
    }
    toggleCount++;
}
- (IBAction)sliderMoved:(id)sender {
    UISlider *elevenSlider = (UISlider*)sender;
    if (elevenSlider.value > 10) {
        NSLog(@"It goes up to 11!");
    } else {
        NSLog(@"Not 11. What a waste.");
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
