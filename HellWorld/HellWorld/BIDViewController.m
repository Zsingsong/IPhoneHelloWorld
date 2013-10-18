//
//  BIDViewController.m
//  HellWorld
//
//  Created by zsingsong on 13-10-17.
//  Copyright (c) 2013年 singsong. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.sliderLabel.text=@"50";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title=[sender titleForState:UIControlStateNormal];
    NSString *plainText=[NSString stringWithFormat:@"%@ button pressed.",title];
    _statusLabel.text=plainText;
    
    NSMutableAttributedString *styledText=[[NSMutableAttributedString alloc] initWithString:plainText];
    NSDictionary *attributes=@{NSFontAttributeName:[UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]};
    NSRange nameRange=[plainText rangeOfString:title];
    [styledText setAttributes:attributes range:nameRange];
    _statusLabel.attributedText=styledText;
}
-(IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}
-(IBAction)backgroundTap:(id)sender{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}


 
@end
