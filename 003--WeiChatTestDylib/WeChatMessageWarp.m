//
//  WeChatMessageWarp.m
//  003--WeiChatTestDylib
//
//  Created by mac on 2018/5/29.
//  Copyright © 2018年 H. All rights reserved.
//

#import "WeChatMessageWarp.h"

@interface WeChatMessageWarp()
@property (nonatomic,strong)NSMutableArray  *queue;
@end

@implementation WeChatMessageWarp
+(instancetype)shareInstanceQueue
{
    static WeChatMessageWarp *queue = nil;
    static dispatch_once_t  once;
    dispatch_once(&once,^{
        queue = [[WeChatMessageWarp alloc]init];
    });
    return queue;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _queue = [NSMutableArray array];
    }
    return self;
}

- (void)inputQueue:(NSMutableDictionary *)param{
    [self.queue addObject:param];
}
- (NSMutableDictionary *)getParamQueue{
    if (self.queue.count == 0 && !self.queue.firstObject) {
        return nil;
    } 
    NSMutableDictionary *first = self.queue.firstObject;
    [self.queue removeObjectAtIndex:0];
    return first;
    
}
@end
