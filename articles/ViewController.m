//
//  ViewController.m
//  RutgersDay
//
//  Created by Vivek Seth on 11/18/13.
//  Copyright (c) 2013 Vivek Seth. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (nonatomic, strong) NSArray * listData;
@end

@implementation ViewController

@synthesize tableView = _tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    //this will serve as the data that the tableView will display
    // (dont kill yourself with the insanely complicted syntax you might see out on the web or in documentation.)
    // check out this link for more short cuts: http://www.albertopasca.it/whiletrue/2012/10/objectivec-power-of-at-sign-aka/
    self.listData = @[@"one", @"two", @"three", @"four", @"five" ];

    //next 2 lines say that the the ViewController class is responisble for the display of its instance property: self.tableView
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

//these are the delegate methods that are needed to display the tableview
//most of them are pretty obvious as to what they do
//the advantage of using fuctions here is so the tableView can be dynamically changed. 
//you can almost think of them as getter functions for properties you think a tableview might have: 
//  (1) numRows, 
//  (2) numSections, 
//  (3) tableViewCells[], etc
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listData.count;
}
//this allows for dynamic cell heights, very important when creating a page that has regions 
//that have variable heights. Mutli element forms forms with textareas are a great exammple
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController * vc = self.contentViews[indexPath.row];
    return vc.view.frame.size.height;
}
//below is pretty standard code. 
//the identifier is to reuse cell objects that are no longer on the screen.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * identifier = @"Cell"; 
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.title.text = self.listData[indexPath.row]
    return cell;
}
//pretty self explanatory, 
//usually used to navigate to another page
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return;
}
//END

//important for memory deallocation
//ViewController holds ref to tableview, but table view hold ref to ViewController, 
//because ref count for both = 1, neither will be deallocated unless you do this. 
- (void)dealloc {
    self.tableView.delegate = nil;
    self.tableView.dataSource = nil;
}

@end
