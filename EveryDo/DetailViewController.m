

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        //this handles the passing of a toDo object and saves it on to this class.
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}


- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
//        self.detailDescriptionLabel.text = [self.detailItem description];
        
        self.detailTitle.text = self.detailItem.title;
        self.detailDescriptionLabel.text = self.detailItem.toDoDescription;
        self.detailPriority.text = self.detailItem.priorityNumber;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
