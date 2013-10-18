//
//  BIDViewController.h
//  HellWorld
//
//  Created by zsingsong on 13-10-17.
//  Copyright (c) 2013年 singsong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *numberField;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UILabel *statusLabel;
@property (strong, nonatomic) IBOutlet UILabel *sliderLabel;
- (IBAction)buttonPressed:(UIButton *)sender;
-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgroundTap:(id)sender;
 

@end
