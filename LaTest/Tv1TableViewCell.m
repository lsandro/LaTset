//
//  Tv1TableViewCell.m
//  LaTest
//
//  Created by apple07 on 16/8/31.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import "Tv1TableViewCell.h"

@interface Tv1TableViewCell ()

@property (strong,nonatomic) UILabel *strLabel;
@property (strong,nonatomic) UIButton *testBtn;

@end

@implementation Tv1TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect labelRect = CGRectMake(5, 20, 200, 20);
        self.strLabel  = [[UILabel alloc] initWithFrame:labelRect];
        self.strLabel.numberOfLines = 0;
        self.strLabel.font = [UIFont systemFontOfSize:17.0];
        //self.strLabel.text = _str;
        [self.contentView addSubview:_strLabel];
        
        _testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _testBtn.frame = CGRectMake(5, 50, 200, 30);
        [_testBtn addTarget:self action:@selector(btnAc:) forControlEvents:UIControlEventTouchUpInside];
        [_testBtn setBackgroundColor:[UIColor yellowColor]];
        [self.contentView addSubview:_testBtn];

    }
    
    return self;
}

- (void)setStr:(NSString *)str{
    if (![str isEqualToString:_str]) {
        _str = [str copy];
        _strLabel.text = _str;
        CGFloat changeHeight = [self HeightForText:_str];
        self.strLabel.frame = CGRectMake(5, 5, 200, changeHeight);
        _testBtn.frame = CGRectMake(5, 10+changeHeight, 200, 30);
        //[self.strLabel sizeToFit];
    }
}

- (void)btnAc:(UIButton *)btn{
    NSLog(@"%ld",btn.tag);
    NSLog(@"old_str:%@",_str);
    NSString *newStr;
    newStr = [_str stringByAppendingString:_str];
    NSLog(@"old_str:%@  ?",_str);
    [self.lsDelegate setStr:newStr atIndex:(btn.tag - 10000)];//代理
    /*
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:newStr forKey:@"str"];
    [dict setObject:@(btn.tag - 10000) forKey:@"index"];
    self.lsBlock(dict);
     */
    NSLog(@"new_str:%@",newStr);
    
    //[self setStr:newStr];
}

- (void)setIndexRow:(NSInteger)indexRow{
    _testBtn.tag = 10000 + indexRow;
}

- (CGFloat)HeightForText:(NSString *)text
{
    NSDictionary *dict = @{NSFontAttributeName: [UIFont systemFontOfSize:17.0]};
    CGSize size = CGSizeMake(200, 2000);
    CGRect frame = [text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dict context:nil];
    return frame.size.height;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
