//
//  TV1ViewController.m
//  LaTest
//
//  Created by apple07 on 16/8/31.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import "TV1ViewController.h"
#import "Tv1TableViewCell.h"
#import "Tv2TableViewCell.h"

static NSString *CellTableIdentifier = @"CellTableIdentifier";


@interface TV1ViewController ()<lashenDelegate>{
    NSMutableArray *strArr;

}

@end

@implementation TV1ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Tv1TableViewCell *tv1Cell = [[Tv1TableViewCell alloc] init];
    //tv1Cell.lsDelegate = self;
    
    strArr = [NSMutableArray alloc];
    NSArray *arr = [[NSArray alloc] init];
    arr = @[@"你好",@"你好你好",@"你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你",@"你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你",@"好你好",@"你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好",@"你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你",@"8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888",@"999",@"10",@"11",@"12"];
    //[strArr addObjectsFromArray:arr];
    strArr = [arr mutableCopy];
    
    [_tv1 registerClass:[Tv1TableViewCell class] forCellReuseIdentifier:@"c1"];
    [_tv1 registerClass:[Tv2TableViewCell class] forCellReuseIdentifier:@"c2"];

   
 
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

#pragma mark - UITableViewDelegate

int i = 1;

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    NSLog(@"0");
    return 0.0;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"1");
    //CGFloat changeHeight = 10;
    CGFloat changeHeight = [self HeightForText:strArr[indexPath.row]];
    NSLog(@"a");
    return changeHeight+10+50;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"2");
    return strArr.count;//+1
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"3");
    Tv1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"c1" forIndexPath:indexPath];
    cell.lsDelegate = self;
   // UITableViewCell *cell = [cellConfig cellOfCellConfigWithTableView:tableView dataModel:self.modelToShow];
    //static NSString *CellIdentifier = @"Cell";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    /*
    __weak TV1ViewController *weakSelf = self;
    cell.lsBlock = ^(NSMutableDictionary *dict){
        NSLog(@"block回调：%@",dict);
        NSNumber *indexNum = [dict objectForKey:@"index"];
        NSInteger index = [indexNum integerValue];
        NSString *str = [dict objectForKey:@"str"];
        [strArr replaceObjectAtIndex:index withObject:str];
        [weakSelf.tv1 reloadData];
    };
    */
    NSLog(@"5");
    //cell.textLabel.text = @"1";
    cell.str = strArr[indexPath.row];
    cell.indexRow = indexPath.row;
    NSLog(@"--------%d",i);
    i++;

    
    return cell;
    
    
    
}
#pragma mark - cell动态行高
- (CGFloat)HeightForText:(NSString *)text
{
    NSDictionary *dict = @{NSFontAttributeName: [UIFont systemFontOfSize:17.0]};
    CGSize size = CGSizeMake(200, 2000);
    CGRect frame = [text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dict context:nil];
    return frame.size.height;
}

#pragma mark - 删除cell
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

/*改变删除按钮的title*/
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"删除";
}

/*删除用到的函数*/
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        /*此处处理自己的代码，如删除数据*/
        [strArr removeObjectAtIndex:indexPath.row];
        /*删除tableView中的一行*/
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
    }
}

#pragma mark - 点击按钮拉伸的代理
- (void)setStr:(NSString *)str atIndex:(NSInteger)index{
    NSLog(@"触发代理");
    [strArr replaceObjectAtIndex:index withObject:str];
    [_tv1 reloadData];
}
@end
