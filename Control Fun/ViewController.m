//
//  ViewController.m
//  Control Fun
//
//  Created by Student on 7/20/15.
//  Copyright (c) 2015 Student_Ralph. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UILabel *segmentLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmentControl;
@property (weak, nonatomic) IBOutlet UISwitch *beastModeControl;
@property (weak, nonatomic) IBOutlet UILabel *beastModeLabel;

- (IBAction)textFieldDoneEditing:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    [self sliderChanged:(UISlider *)self.sliderControl];
    [self beastModeChanged:(UISwitch *)self.beastModeControl];
    [self segmentChanged:(UISegmentedControl *)self.mySegmentControl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Close Keyboard

-(IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction)backgroundTap:(id)sender
{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

#pragma mark Slider

- (IBAction)sliderChanged:(UISlider *)sender
{
    int progress = (int)lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
}

#pragma mark Sergment

- (IBAction)segmentChanged:(UISegmentedControl *)sender
{
    //self.segmentLabel.text = sender.selectedSegmentIndex;
    
    int selectedIndex = (int)sender.selectedSegmentIndex;
    switch (selectedIndex) {
        case 0:
            self.segmentLabel.text = @"I prefer Blonde.";
            break;
        case 1:
            self.segmentLabel.text = @"I prefer Brunette.";
            break;
        default:
            self.segmentLabel.text = @"I have no preference";
            break;
    }
}

#pragma mark Switch

- (IBAction)beastModeChanged:(UISwitch *)sender
{
    if (sender.on) {
        self.beastModeLabel.text = @"Beast Mode On";
    }else
    {
        self.beastModeLabel.text = @"Beast Mode Off";
    }
}


@end
