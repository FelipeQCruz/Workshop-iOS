//
//  ViewController.m
//  Aula1
//
//  Created by EquipeSuporteAplicacao on 1/23/18.
//  Copyright © 2018 EquipeSuporteAplicacao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *Tabela;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Tabela.delegate = self;
    self.Tabela.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *Cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    Cell.textLabel.text = @"Teste";
        return Cell;
}

@end
