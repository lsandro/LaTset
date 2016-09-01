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

@end

@implementation Tv1TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect labelRect = CGRectMake(5, 20, 200, 20);
        self.strLabel  = [[UILabel alloc] initWithFrame:labelRect];
        self.strLabel.numberOfLines = 0;
        self.strLabel.font = [UIFont systemFontOfSize:17.0];
        //self.strLabel.text = _str;
        [self.contentView addSubview:_strLabel];
    }
    
    return self;
}

- (void)setStr:(NSString *)str{
    if (![str isEqualToString:_str]) {
        _str = [str copy];
        _strLabel.text = _str;
        self.strLabel.frame = CGRectMake(5, 5, 200, [self HeightForText:_str]);
        //[self.strLabel sizeToFit];
    }
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
