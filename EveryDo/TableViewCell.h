

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleCell;
@property (weak, nonatomic) IBOutlet UILabel *priorityNumberCell;
@property (weak, nonatomic) IBOutlet UILabel *descriptionCell;
@property (nonatomic) ToDo *toDoProperty;
- (void) displayData: (ToDo*) toDo;
@end
