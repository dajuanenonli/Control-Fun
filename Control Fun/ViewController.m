//
//  ViewController.m
//  Control Fun
//
//  Created by Student on 7/20/15.
//  Copyright (c) 2015 Student_Ralph. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UILabel *segmentLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmentControl;


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




@end
