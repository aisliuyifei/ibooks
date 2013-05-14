//
//  SelectViewController.h
//  ADVNavigatonBarPack
//
//  Created by Tope Abayomi on 04.03.13.
//  Copyright (c) 2013 Tope Abayomi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *tableView;
@end
