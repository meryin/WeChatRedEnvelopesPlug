//
//  WeChatMessageWarp.h
//  003--WeiChatTestDylib
//
//  Created by mac on 2018/5/29.
//  Copyright © 2018年 H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeChatMessageWarp : NSObject

+(instancetype)shareInstanceQueue;

- (void)inputQueue:(NSMutableDictionary *)param;
- (NSMutableDictionary *)getParamQueue;
@end
