//
//  Tv1TableViewCell.h
//  LaTest
//
//  Created by apple07 on 16/8/31.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol lashenDelegate <NSObject>

- (void)setStr:(NSString *)str atIndex:(NSInteger)index;

@end

@interface Tv1TableViewCell : UITableViewCell

@property (nonatomic, weak) id<lashenDelegate> lsDelegate;

@property (copy,nonatomic) NSString *str;

@property (assign,nonatomic) NSInteger indexRow;

@property(nonatomic,copy)void(^lsBlock)(NSMutableDictionary *lsDict);

@end
