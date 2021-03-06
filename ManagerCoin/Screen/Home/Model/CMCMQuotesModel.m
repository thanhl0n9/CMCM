//
//  CMCMQuotesModel.m
//  ManagerCoin
//
//  Created by LongLy on 08/05/2018.
//  Copyright © 2018 LongLy. All rights reserved.
//

#import "CMCMQuotesModel.h"

@implementation CMCMQuotesModel

- (instancetype)initQuotesFollowUSDWithDictionary:(NSDictionary *)dic{
    self = [super init];
    if (self) {
        @try {
            if(dic[@"market_cap"] == [NSNull null]){
                self.market_cap = 0;
            } else {
                self.market_cap = [dic[@"market_cap"] integerValue];
            }
            if(dic[@"percent_change_1h"] == [NSNull null]){
                self.percent_change_1h = 0;
            } else {
                self.percent_change_1h = [dic[@"percent_change_1h"] doubleValue];
            }
            if(dic[@"percent_change_24h"] == [NSNull null]){
                self.percent_change_24h = 0;
            } else {
                self.percent_change_24h = [dic[@"percent_change_24h"] doubleValue];
            }
            self.percent_change_7d = 0.f;
            if(![dic[@"percent_change_7d"] isKindOfClass:[NSNull class]])
            {
                self.percent_change_7d = [dic[@"percent_change_7d"] doubleValue];
            }
            if (dic[@"price"] == [NSNull null]) {
                self.price = 0;
            } else {
                self.price = [dic[@"price"] doubleValue];
            }
            if (dic[@"volume_24h"] == [NSNull null]) {
                self.volume_24h = 0;
            } else {
                self.volume_24h = [dic[@"volume_24h"] doubleValue];
            }
        } @catch (NSException *exception) {
            
        } @finally {
            
        }
    }
    return self;

}
- (instancetype)initWidth:(NSString *)market_cap
                    width:(NSString *)percent_change_1h
                    width:(NSString *)percent_change_24h
                    width:(NSString *)percent_change_7d
                    width:(NSString *)price
                    width:(NSString *)volume_24h
{
    self = [super init];
    if (self) {
        self.market_cap = [market_cap integerValue];
        self.percent_change_1h = [percent_change_1h doubleValue];
        self.percent_change_24h = [percent_change_24h doubleValue];
        self.percent_change_7d = [percent_change_7d doubleValue];
        self.price = [price doubleValue];
        self.volume_24h = [volume_24h doubleValue];
    }
    return self;
}

@end
