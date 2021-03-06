
//
//  TLUser.m
//  TLChat
//
//  Created by 李伯坤 on 16/1/23.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#import "TLUser.h"
#import "NSString+PinYin.h"

@implementation TLUser

- (id) initWithUserID:(NSString *)userID avatarPath:(NSString *)avatarPath remarkName:(NSString *)remarkName
{
    if (self = [super init]) {
        self.userID = userID;
        self.avatarPath = avatarPath;
        self.remarkName = remarkName;
    }
    return self;
}

- (void)setUsername:(NSString *)username
{
    if ([username isEqualToString:_username]) {
        return;
    }
    _username = username;
    if (self.remarkName.length == 0 && self.nikeName.length == 0) {
        self.pinyin = username.pinyin;
        self.pinyinInitial = username.pinyinInitial;
    }
}

- (void)setNikeName:(NSString *)nikeName
{
    if ([nikeName isEqualToString:_nikeName]) {
        return;
    }
    _nikeName = nikeName;
    if (self.remarkName.length == 0) {
        self.pinyin = nikeName.pinyin;
        self.pinyinInitial = nikeName.pinyinInitial;
    }
}

- (void)setRemarkName:(NSString *)remarkName
{
    if ([remarkName isEqualToString:_remarkName]) {
        return;
    }
    _remarkName = remarkName;
    self.pinyin = remarkName.pinyin;
    self.pinyinInitial = remarkName.pinyinInitial;
}

#pragma mark - Getter
- (NSString *)showName
{
    return self.remarkName ? self.remarkName : (self.nikeName ? self.nikeName : self.username);
}

@end
