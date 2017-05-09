
#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDo.h"
#import "TableViewCell.h"
#import "AddViewController.h"

@interface MasterViewController () <AddNewCell>
@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ToDo *toDoEat = [[ToDo alloc] initWithTitle:@"Eat" withToDoDescription:@"Eating" withPriorityNumber:@"1" withIsCompleted:NO];
    ToDo *toDoSleep = [[ToDo alloc] initWithTitle:@"Sleep" withToDoDescription:@"Sleeping" withPriorityNumber:@"2" withIsCompleted:NO];
    ToDo *toDoCode = [[ToDo alloc] initWithTitle:@"Code" withToDoDescription:@"Coding" withPriorityNumber:@"3" withIsCompleted:NO];
    ToDo *toDoRepeat = [[ToDo alloc] initWithTitle:@"Repeat" withToDoDescription:@"Repeating" withPriorityNumber:@"4" withIsCompleted:NO];
    self.objects = [[NSMutableArray alloc] init];
    [self.objects addObject:toDoEat];
    [self.objects addObject:toDoSleep];
    [self.objects addObject:toDoCode];
    [self.objects addObject:toDoRepeat];
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}
- (void)insertNewObject:(id)sender {
    [self performSegueWithIdentifier:@"NewCell" sender:sender];
    
}

- (void)viewWillAppear:(BOOL)animated {
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    //cancel button:
        //self dismiViewControllerAnimated:YES completion:nil]
    
    
    
- (void)saveToDo:(ToDo *)toDo  {
    NSMutableArray *mutableTodos = self.objects.mutableCopy;
    [mutableTodos addObject:toDo];
    self.objects = mutableTodos;
    [self.tableView reloadData];
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        //self.tableView= the root view
        //index path is now the cell that was tapped (through sender)
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        
        //we're matching the tapped row to the obejct in the array
        //here we're pointing to an object in the arrray
        ToDo *toDoInstance = self.objects [indexPath.row];
        
        
        DetailViewController *controller = (DetailViewController *)[segue destinationViewController];
        
        controller.detailItem = toDoInstance;
    } else if ([[segue identifier] isEqualToString:@"NewCell"]) {
        AddViewController *addVC = segue.destinationViewController;
        addVC.delegate = self;
    }
    
    //set delegate to self in the else statement
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    ToDo *object = self.objects[indexPath.row];
    [cell displayData:object];
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


@end
