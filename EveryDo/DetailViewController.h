
#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo* detailItem;




@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailPriority;


@end

