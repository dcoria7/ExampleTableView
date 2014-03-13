//
//  ViewController.h
//  ExampleTable
//
//  Created by D C on 3/12/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property(weak,nonatomic)IBOutlet UITableView *table;

@end
