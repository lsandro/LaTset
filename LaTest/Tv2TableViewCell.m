//
//  Tv2TableViewCell.m
//  LaTest
//
//  Created by apple07 on 16/9/1.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import "Tv2TableViewCell.h"

@interface Tv2TableViewCell ()

@property (strong,nonatomic) UITextView *textView;


@end
@implementation Tv2TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect labelRect = CGRectMake(5, 20, 200, 20);
        
        self.textView  = [[UITextView alloc] initWithFrame:labelRect];
        self.textView.font = [UIFont systemFontOfSize:17.0];
        [self.textView setTintColor:[UIColor greenColor]];
        //self.strLabel.text = _str;
        [self.contentView addSubview:_textView];
        
        self.contentView.backgroundColor = [UIColor redColor];
    }
    
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
