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

@implementation RTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)changeBackgroundColor:(id)sender {
    UIColor *newBGColor = [UIColor cyanColor];
    if ([self.view.backgroundColor isEqual:newBGColor]) {
        [self.view setBackgroundColor:[UIColor whiteColor]];
    } else {
        [self.view setBackgroundColor:newBGColor];
    }
}
- (IBAction)logToConsole:(id)sender {
    NSLog(@"Logging to console.");
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
