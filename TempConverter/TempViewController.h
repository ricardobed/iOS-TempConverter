//
//  TempViewController.h
//  TempConverter
//
//  Created by Ricardo Bedoya on 7/24/13.
//  Copyright (c) 2013 Ricardo Bedoya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *fahTextField;
@property (nonatomic, weak) IBOutlet UITextField *celTextField;

@property (assign, nonatomic) BOOL fahDoneButton;
@property (assign, nonatomic) BOOL celDoneButton;


- (IBAction)convertButton;

@end
