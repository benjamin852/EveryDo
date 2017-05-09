

#import "ToDo.h"

@implementation ToDo
- (instancetype) initWithTitle:(NSString*)title withToDoDescription:(NSString*)description withPriorityNumber:(NSString*)priority withIsCompleted:(BOOL)completed {
    self = [super init];
    if (self) {
        _title = title;
        _toDoDescription = description;
        _priorityNumber = priority;
        _isCompleted = completed;
    }
    return self;
}
@end
