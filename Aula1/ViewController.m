//
//  ViewController.m
//  Aula1
//
//  Created by EquipeSuporteAplicacao on 1/23/18.
//  Copyright © 2018 EquipeSuporteAplicacao. All rights reserved.
//

#import "ViewController.h"
#import "HellTableViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *Tabela;
@property NSMutableArray *Vetor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Tabela.delegate = self;
    self.Tabela.dataSource = self;
    [self.Tabela registerNib: [UINib nibWithNibName:@"Hell" bundle:nil] forCellReuseIdentifier:@"hell"];
    self.Vetor = [[NSMutableArray alloc] initWithArray:@[@"primeiro", @"segundo"]];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.Vetor.count;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HellTableViewCell *Cell = (HellTableViewCell *) [self.Tabela dequeueReusableCellWithIdentifier:@"hell" forIndexPath:indexPath];
    Cell.Texto1.text = (NSString *) [self.Vetor objectAtIndex:indexPath.row];
    return Cell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.Vetor removeObjectAtIndex:indexPath.row];
    [self.Tabela reloadData];
}

@end
