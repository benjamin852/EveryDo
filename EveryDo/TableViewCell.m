

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
- (void) displayData: (ToDo*) toDo {
    if (toDo.isCompleted) {
        
        NSAttributedString *titleStrikeThrough = [[NSAttributedString alloc] initWithString:toDo.title attributes:@{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleSingle)}];
        
        NSAttributedString *priorityStrikeThrough = [[NSAttributedString alloc] initWithString:toDo.priorityNumber attributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle)}];
        
        NSAttributedString *descriptionStrikeThrough  = [[NSAttributedString alloc] initWithString:toDo.toDoDescription attributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle)}];
        
        self.titleCell.attributedText = titleStrikeThrough;
        self.priorityNumberCell.attributedText = priorityStrikeThrough;
        self.descriptionCell.attributedText = descriptionStrikeThrough;
        
    } else {
        self.titleCell.text = toDo.title;
        self.priorityNumberCell.text = toDo.priorityNumber;
        self.descriptionCell.text = toDo.toDoDescription;
    }
    
    
    
    
    
    
}
@end


