//
//  ViewController.h
//  CreateStory
//
//  Created by el1ven on 14-3-17.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *thePlace;//the name of a place

@property (strong, nonatomic) IBOutlet UITextField *theVerb;//a verb

@property (strong, nonatomic) IBOutlet UITextField *theNum;//a small number

@property (strong, nonatomic) IBOutlet UITextView *theTemplate;//first text view

@property (strong, nonatomic) IBOutlet UITextView *theStory;//second text view

@property (strong, nonatomic) IBOutlet UIButton *theButton;//generate story button

- (IBAction)createStory:(id)sender;
//button event

- (IBAction)hideKeyBoard:(id)sender;
@end
