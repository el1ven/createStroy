//
//  ViewController.m
//  CreateStory
//
//  Created by el1ven on 14-3-17.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize thePlace;
@synthesize theVerb;
@synthesize theNum;
@synthesize theTemplate;
@synthesize theStory;
@synthesize theButton;

- (void)viewDidLoad//当View生成的时候，设置按钮相应的样式
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *normalImage = [[UIImage imageNamed:@"whiteButton.png"]stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    UIImage *pressedImage = [[UIImage imageNamed:@"blueButton.png"]stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    [self.theButton setBackgroundImage:normalImage forState:UIControlStateNormal];
    [self.theButton setBackgroundImage:pressedImage forState:UIControlStateHighlighted];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createStory:(id)sender {//文本框信息来源
    self.theStory.text = [self.theTemplate.text stringByReplacingOccurrencesOfString:@"<place>" withString:self.thePlace.text];
    self.theStory.text = [self.theStory.text stringByReplacingOccurrencesOfString:@"<verb>" withString:self.theVerb.text];
    self.theStory.text = [self.theStory.text stringByReplacingOccurrencesOfString:@"<number>" withString:self.theNum.text];
}
- (IBAction)hideKeyBoard:(id)sender {//隐藏键盘
    [self.thePlace resignFirstResponder];
    [self.theVerb resignFirstResponder];
    [self.theTemplate resignFirstResponder];
    [self.theStory resignFirstResponder];
}
@end
