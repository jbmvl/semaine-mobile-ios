//
//  DetailViewController.h
//  PoKidEx
//
//  Created by Jean-Michel Didon on 02/12/2013.
//  Copyright (c) 2013 HETIC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
