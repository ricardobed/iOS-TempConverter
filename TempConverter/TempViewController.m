//
//  TempViewController.m
//  TempConverter
//
//  Created by Ricardo Bedoya on 7/24/13.
//  Copyright (c) 2013 Ricardo Bedoya. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()


@end

@implementation TempViewController {
    float celsius, fahrenheit;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.fahTextField.delegate = self;
    self.celTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField methods

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButton)];
    [self resetEverything];
    
    return YES;
}


#pragma mark - My other methods

- (IBAction)convertButton
{
    celsius = [self.celTextField.text floatValue];
    fahrenheit = [self.fahTextField.text floatValue];
    
    if (fahrenheit > 0) {
        celsius = (fahrenheit - 32) * 5/9;
        self.celTextField.text = [NSString stringWithFormat:@"%0.4f", celsius];
    } else if (celsius > 0) {
        fahrenheit = celsius * 9/5 + 32;
        self.fahTextField.text = [NSString stringWithFormat:@"%0.4f", fahrenheit];
    }
    self.navigationItem.rightBarButtonItem = nil;
}

-(BOOL)doneButton
{
    [self.view endEditing:YES];
    return YES;
}

- (void)resetEverything
{
    self.celTextField.text = nil;
    self.fahTextField.text = nil;
}

@end
