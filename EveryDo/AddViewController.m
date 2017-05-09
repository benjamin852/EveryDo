

#import "AddViewController.h"

@interface AddViewController ()

@property (weak, nonatomic) IBOutlet UITextField *addNewTitle;
@property (weak, nonatomic) IBOutlet UITextField *addNewPriority;
@property (weak, nonatomic) IBOutlet UITextField *addNewDescription;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButton:(UIButton *)sender {
    ToDo *toDo = [[ToDo alloc] initWithTitle:self.addNewTitle.text
                         withToDoDescription:self.addNewPriority.text
                          withPriorityNumber:self.addNewDescription.text
                             withIsCompleted:NO
                  ];
    
    [self.delegate saveToDo:toDo];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
