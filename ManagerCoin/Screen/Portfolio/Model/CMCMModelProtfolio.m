//
//  CMCMModelProtfolio.m
//  ManagerCoin
//
//  Created by LongLy on 13/05/2018.
//  Copyright © 2018 LongLy. All rights reserved.
//

#import "CMCMModelProtfolio.h"

@implementation CMCMModelProtfolio

-(id)initWithItem:(NSString *)title
        andsymbol:(NSString *)symbol
     andtradedate:(NSString *)tradedate
      andQuanlity:(float )quanlity
         andprice:(float )price
         andtotal:(float )total
     andpriceType:(float )priceType
     andidItemPro:(NSString *)idItemPro
     andidCoin:(NSString *)idCoin
{
    self = [super init];
    if(self)
    {
        _title = title;
        _symbol = symbol;
        _tradedate = tradedate;
        _quanlity = quanlity;
        _price = price;
        _total = total;
        _priceType = priceType;
        _idItemPro = idItemPro;
        _idCoin = idCoin;
    }
    return self;
}

@end
