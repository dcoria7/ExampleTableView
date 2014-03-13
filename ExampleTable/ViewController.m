//
//  ViewController.m
//  ExampleTable
//
//  Created by D C on 3/12/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *arreglo;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arreglo=[[NSMutableArray alloc]initWithObjects:@"Hola mundo",@"Hello World", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    //Regresa el numero de secciones en la tabla
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    //regresa el numero de celdas en nuestra tabla
    return [arreglo count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text=[arreglo objectAtIndex:indexPath.row];
    
    return cell;
    
}


#pragma mark UITableViewDelegate

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
