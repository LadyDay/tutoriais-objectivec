//
//  ViewController.m
//  tutorial
//
//  Created by Dayane Kelly Rodrigues da Silva on 21/05/15.
//  Copyright (c) 2015 LadyDay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property IBOutlet UIImageView *imagem;
@property IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *recognizerRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)];
    [recognizerRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [_imagem addGestureRecognizer:recognizerRight];
    
    UISwipeGestureRecognizer *recognizerLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)];
    [recognizerLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [_imagem addGestureRecognizer:recognizerLeft];
}

-(void)swipeRight{
    _label.text = @"Right";
}

-(void)swipeLeft{
    _label.text = @"Left";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
