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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Tabela.delegate = self;
    self.Tabela.dataSource = self;
    [self.Tabela registerNib: [UINib nibWithNibName:@"Hell" bundle:nil] forCellReuseIdentifier:@"hell"];
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
    HellTableViewCell *Cell = (HellTableViewCell *) [self.Tabela dequeueReusableCellWithIdentifier:@"hell" forIndexPath:indexPath];
    Cell.Texto1.text = @"Hell-o world";
    return Cell;
}

@end
