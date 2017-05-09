

#import <UIKit/UIKit.h>
#import "ToDo.h"
@protocol AddNewCell <NSObject>
- (void) saveToDo: (ToDo*) toDo;
@end

@interface AddViewController : UIViewController
@property (nonatomic, weak) id <AddNewCell>delegate;
@end
