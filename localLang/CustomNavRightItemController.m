//
//  CustomNavRightItemController.m
//  localLang
//
//  Created by wzkj on 16/8/18.
//  Copyright © 2016年 ywkj. All rights reserved.
//

#import "CustomNavRightItemController.h"

@interface CustomNavRightItemController ()

@end

@implementation CustomNavRightItemController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//| ----------------------------------------------------------------------------
//! IBAction for the segemented control.
//
- (IBAction)changeRightBarItem:(UISegmentedControl*)sender
{
    if (sender.selectedSegmentIndex == 0)
    {
        // Add a custom add button as the nav bar's custom right view
        UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"Add"
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                     action:@selector(action:)];
        self.navigationItem.rightBarButtonItem = addButton;
    }
    else if (sender.selectedSegmentIndex == 1)
    {
        // add our custom image button as the nav bar's custom right view
        UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Email"]
                                                                      style:UIBarButtonItemStylePlain target:self action:@selector(action:)];
        self.navigationItem.rightBarButtonItem = addButton;
    }
    else if (sender.selectedSegmentIndex == 2)
    {
        // "Segmented" control to the right
        UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[
                                                                                           [UIImage imageNamed:@"UpArrow"],
                                                                                           [UIImage imageNamed:@"DownArrow"],
                                                                                           ]];
        
        [segmentedControl addTarget:self action:@selector(action:) forControlEvents:UIControlEventValueChanged];
        segmentedControl.frame = CGRectMake(0, 0, 90, 30.0);
        segmentedControl.momentary = YES;
        
        UIBarButtonItem *segmentBarItem = [[UIBarButtonItem alloc] initWithCustomView:segmentedControl];
        
        self.navigationItem.rightBarButtonItem = segmentBarItem;
    }
}

#pragma mark -
#pragma mark IBActions

//| ----------------------------------------------------------------------------
//! IBAction for the various bar button items shown in this example.
//
- (IBAction)action:(id)sender
{
    NSLog(@"-[%@ %@]", [self class], NSStringFromSelector(_cmd));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
