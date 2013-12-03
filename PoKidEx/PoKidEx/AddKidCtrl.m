//
//  AddKidCtrl.m
//  PoKidEx
//
//  Created by Jean-Michel Didon on 03/12/2013.
//  Copyright (c) 2013 HETIC. All rights reserved.
//

#import "AddKidCtrl.h"

@interface AddKidCtrl ()

// Reference to the fields in the Storyboard
// *firstName = Prénom
// *lastName = Nom
// *age = Âge
// *doneBtn = Bouton "Done"
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBtn;

@end

@implementation AddKidCtrl

// Called before the Segue implementation : if we pressed Cancel, nothing happens.
// Else,
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if(sender != self.doneBtn) return;
    if(self.firstName.text.length > 0 && self.lastName)
    {
        self.kid = [[Kid alloc] init];
        self.kid.firstName = self.firstName.text;
        self.kid.lastName = self.lastName.text;
        self.kid.age = self.age.text;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
