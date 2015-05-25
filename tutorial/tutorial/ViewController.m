//
//  ViewController.m
//  tutorial
//
//  Created by Dayane Kelly Rodrigues da Silva on 21/05/15.
//  Copyright (c) 2015 LadyDay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property IBOutlet UILabel *directionSwipe;

@end

@implementation ViewController

-(void)movimentoDireita{
    _directionSwipe.text = @"Direita";
}

-(void)movimentoEsquerda{
    _directionSwipe.text = @"Esquerda";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *movimentoDireita = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(movimentoDireita)];
    [movimentoDireita setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:movimentoDireita];
    
    UISwipeGestureRecognizer *movimentoEsquerda = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(movimentoEsquerda)];
    [movimentoEsquerda setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:movimentoEsquerda];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
