

#import <Foundation/Foundation.h>

@interface ToDo : NSObject
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *toDoDescription;
@property (nonatomic) NSString* priorityNumber;
@property (nonatomic) BOOL isCompleted;
- (instancetype) initWithTitle:(NSString*)title withToDoDescription:(NSString*)description withPriorityNumber:(NSString*)priority withIsCompleted:(BOOL)completed;
@end
