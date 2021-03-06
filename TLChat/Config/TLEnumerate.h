//
//  TLEnumerate.h
//  TLChat
//
//  Created by 李伯坤 on 16/1/23.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#ifndef TLEnumerate_h
#define TLEnumerate_h

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TLClueType) {
    TLClueTypeNone,
    TLClueTypePoint,
    TLClueTypePointWithNumber,
};

typedef NS_ENUM(NSInteger, TLConversationType) {
    TLConversationTypePersonal,     // 个人
    TLConversationTypePublic,       // 公众号
    TLConversationTypeGroup,        // 群聊
    TLConversationTypeServerGroup,  // 服务组（订阅号、企业号）
};

typedef NS_ENUM(NSInteger, TLMessageRemindType) {
    TLMessageRemindTypeNormal,    // 正常接受
    TLMessageRemindTypeClosed,    // 不提示
    TLMessageRemindTypeNotLook,   // 不看
    TLMessageRemindTypeUnlike,    // 不喜欢
};

typedef NS_ENUM(NSInteger, TLMessageType) {
    TLMessageTypeText,          // 文字
    TLMessageTypeImage,         // 图片
    TLMessageTypeVoice,         // 语音
    TLMessageTypeVideo,         // 视频
    TLMessageTypeURL,           // 链接
    TLMessageTypePosition,      // 位置
    TLMessageTypeBusinessCard,  // 名片
    TLMessageTypeSystem,        // 系统
    TLMessageTypeUnknown,
};

typedef NS_ENUM(NSUInteger, TLMoreKeyboardItemType) {
    TLMoreKeyboardItemTypeImage,
    TLMoreKeyboardItemTypeCamera,
    TLMoreKeyboardItemTypeVideo,
    TLMoreKeyboardItemTypeVideoCall,
    TLMoreKeyboardItemTypeWallet,
    TLMoreKeyboardItemTypeTransfer,
    TLMoreKeyboardItemTypePosition,
    TLMoreKeyboardItemTypeFavorite,
    TLMoreKeyboardItemTypeBusinessCard,
    TLMoreKeyboardItemTypeVoice,
    TLMoreKeyboardItemTypeCards,
};

typedef NS_ENUM(NSUInteger, TLScannerType) {
    TLScannerTypeQR = 1,        // 扫一扫 - 二维码
    TLScannerTypeCover,         // 扫一扫 - 封面
    TLScannerTypeStreet,        // 扫一扫 - 街景
    TLScannerTypeTranslate,     // 扫一扫 - 翻译
};

#endif /* TLEnumerate_h */
