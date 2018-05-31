#line 1 "/Users/mac/Downloads/iOSVIP课/iOS第二期 安全攻防/微信抢红包案例/003--WeiChatTest/WeChatRedEnvelopesPlug/003--WeiChatTestDylib/WeChatAutoRedEnlope.xm"
#import "Header.h"
#import "WeChatMessageWarp.h"
#import <UIKit/UIKit.h>



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class WCRedEnvelopesLogicMgr; @class MMServiceCenter; @class WCBizUtil; @class WCRedEnvelopesReceiveHomeView; @class CMessageMgr; @class BaseMsgContentLogicController; @class BaseMsgContentViewController; @class NSMutableDictionary; @class WCRedEnvelopesReceiveControlLogic; @class CContactMgr; 

static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCRedEnvelopesLogicMgr(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCRedEnvelopesLogicMgr"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$MMServiceCenter(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("MMServiceCenter"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NSMutableDictionary(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("NSMutableDictionary"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCBizUtil(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCBizUtil"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CContactMgr(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CContactMgr"); } return _klass; }
#line 6 "/Users/mac/Downloads/iOSVIP课/iOS第二期 安全攻防/微信抢红包案例/003--WeiChatTest/WeChatRedEnvelopesPlug/003--WeiChatTestDylib/WeChatAutoRedEnlope.xm"
static void (*_logos_orig$group4$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$)(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentViewController* _LOGOS_SELF_CONST, SEL, id, _Bool, _Bool); static void _logos_method$group4$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentViewController* _LOGOS_SELF_CONST, SEL, id, _Bool, _Bool); static void (*_logos_orig$group4$BaseMsgContentLogicController$DidAddMsg$)(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentLogicController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$group4$BaseMsgContentLogicController$DidAddMsg$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentLogicController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$group4$BaseMsgContentLogicController$OnAddMsg$MsgWrap$)(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentLogicController* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$group4$BaseMsgContentLogicController$OnAddMsg$MsgWrap$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentLogicController* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$group4$CMessageMgr$MainThreadNotifyToExt$)(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$group4$CMessageMgr$MainThreadNotifyToExt$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$group4$CMessageMgr$onNewSyncAddMessage$)(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, CMessageWrap *); static void _logos_method$group4$CMessageMgr$onNewSyncAddMessage$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, CMessageWrap *); static void (*_logos_orig$group4$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes)(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveHomeView* _LOGOS_SELF_CONST, SEL); static void _logos_method$group4$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveHomeView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$group4$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes)(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveControlLogic* _LOGOS_SELF_CONST, SEL); static void _logos_method$group4$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveControlLogic* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$group4$WCRedEnvelopesLogicMgr$ReceiverQueryRedEnvelopesRequest$)(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST, SEL, NSMutableDictionary *); static void _logos_method$group4$WCRedEnvelopesLogicMgr$ReceiverQueryRedEnvelopesRequest$(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST, SEL, NSMutableDictionary *); static void (*_logos_orig$group4$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$)(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST, SEL, HongBaoRes *, id); static void _logos_method$group4$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST, SEL, HongBaoRes *, id); 



static void _logos_method$group4$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2, _Bool arg3) {
_logos_orig$group4$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$group4$BaseMsgContentLogicController$DidAddMsg$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentLogicController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
_logos_orig$group4$BaseMsgContentLogicController$DidAddMsg$(self, _cmd, arg1);
}
static void _logos_method$group4$BaseMsgContentLogicController$OnAddMsg$MsgWrap$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentLogicController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
_logos_orig$group4$BaseMsgContentLogicController$OnAddMsg$MsgWrap$(self, _cmd, arg1, arg2);
}



static void _logos_method$group4$CMessageMgr$MainThreadNotifyToExt$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
_logos_orig$group4$CMessageMgr$MainThreadNotifyToExt$(self, _cmd, arg1);
}





static void _logos_method$group4$CMessageMgr$onNewSyncAddMessage$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CMessageWrap * m_Wrap){


if( MSHookIvar<unsigned int>(m_Wrap,"m_uiMessageType") != 49 ){
_logos_orig$group4$CMessageMgr$onNewSyncAddMessage$(self, _cmd, m_Wrap);
return;
}
if([WCDefaults boolForKey:WCSWITCHKEY] == NO){
_logos_orig$group4$CMessageMgr$onNewSyncAddMessage$(self, _cmd, m_Wrap);
return;
}
WCPayInfoItem *item =[m_Wrap m_oWCPayInfoItem];
if(item == nil){
return;
}
NSString *url =[item  m_c2cNativeUrl];
NSInteger length = [@"wxpay://c2cbizmessagehandler/hongbao/receivehongbao?" length];
id componets = [url substringFromIndex:length];
NSDictionary *dictionary=[_logos_static_class_lookup$WCBizUtil() dictionaryWithDecodedComponets:componets separator:@"&"];
NSLog(@"dic===%@",dictionary);
NSMutableDictionary *mul_dict =[_logos_static_class_lookup$NSMutableDictionary() dictionary];
[mul_dict setObject:@"1" forKey:@"msgType"];
[mul_dict setObject:dictionary[@"sendid"] forKey:@"sendId"];
[mul_dict setObject:dictionary[@"channelid"] forKey:@"channelId"];
CContactMgr *server =[[_logos_static_class_lookup$MMServiceCenter() defaultCenter] getService:[_logos_static_class_lookup$CContactMgr() class]];
CContact *contact = [server getSelfContact];
id  displayName = [contact getContactDisplayName];
[mul_dict setObject:displayName forKey:@"nickName"];
id m_nsHeadImgUrl = [contact m_nsHeadImgUrl];
[mul_dict setObject:m_nsHeadImgUrl forKey:@"headImg"];
if ( m_Wrap )
{
[mul_dict setObject:url forKey:@"nativeUrl"];

}
NSString *m_nsUsrName = MSHookIvar<NSString *>(m_Wrap,"m_nsFromUsr");

[mul_dict setObject:m_nsUsrName forKey:@"sessionUserName"];

WeChatMessageWarp *share = [WeChatMessageWarp shareInstanceQueue];

[mul_dict setObject:@"YES" forKey:@"isMySelfMeryin"];
[share inputQueue:mul_dict];










WCRedEnvelopesLogicMgr *envelopesLogicMgr = [[_logos_static_class_lookup$MMServiceCenter() defaultCenter] getService:[_logos_static_class_lookup$WCRedEnvelopesLogicMgr() class]];
NSMutableDictionary *param =[_logos_static_class_lookup$NSMutableDictionary() dictionary];
[param setObject:@"1" forKey:@"msgType"];
[param setObject:dictionary[@"channelid"] forKey:@"channelId"];
[param setObject:@"0" forKey:@"agreeDuty"];
[param setObject:@"1" forKey:@"inWay"];
if([m_nsUsrName containsString:@"@chatroom"]){
[param setObject:@"0" forKey:@"inWay"];
}
[param setObject:dictionary[@"sendid"] forKey:@"sendId"];
[param setObject:url forKey:@"nativeUrl"];
[envelopesLogicMgr ReceiverQueryRedEnvelopesRequest:param];

}



static void _logos_method$group4$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveHomeView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
_logos_orig$group4$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes(self, _cmd);








}





static void _logos_method$group4$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveControlLogic* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
_logos_orig$group4$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes(self, _cmd);
























































}




static void _logos_method$group4$WCRedEnvelopesLogicMgr$ReceiverQueryRedEnvelopesRequest$(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSMutableDictionary * arg1){
_logos_orig$group4$WCRedEnvelopesLogicMgr$ReceiverQueryRedEnvelopesRequest$(self, _cmd, arg1);
}



static void _logos_method$group4$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, HongBaoRes * arg1, id arg2) {
_logos_orig$group4$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$(self, _cmd, arg1, arg2);

NSLog(@"platMsg:%@",arg1.platMsg);
NSLog(@"cgiCmdid:%d",arg1.cgiCmdid);
NSLog(@"platRet:%d",arg1.platRet);
NSLog(@"errorType:%d",arg1.errorType);
NSLog(@"----errorMsg:%@--------------",arg1.errorMsg);




NSError *error;
NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:arg1.retText.buffer options:NSJSONReadingMutableContainers error:&error];
NSString *receiveStatus =[NSString stringWithFormat:@"%@",responseDict[@"receiveStatus"]];
if(arg1 !=nil && arg2 !=nil && arg1.cgiCmdid==3 && [receiveStatus isEqualToString:@"0"])
{

NSString *timingIdentifier = responseDict[@"timingIdentifier"];
WeChatMessageWarp *share = [WeChatMessageWarp shareInstanceQueue];
NSMutableDictionary *warp = [share getParamQueue];
NSString *flag = [warp objectForKey:@"isMySelfMeryin"];
if(![flag isEqualToString:@"YES"]){
return;
}
[warp removeObjectForKey:@"isMySelfMeryin"];
if(timingIdentifier.length >0 && warp.count >0){
[warp setObject:timingIdentifier forKey:@"timingIdentifier"];


WCRedEnvelopesLogicMgr *envelopesLogicMgr = [[_logos_static_class_lookup$MMServiceCenter() defaultCenter] getService:[_logos_static_class_lookup$WCRedEnvelopesLogicMgr() class]];
if(envelopesLogicMgr){

NSString *time = [WCDefaults valueForKey:WCTIMEKEY];
float second = 1;
if(time){
second =[time floatValue];
}

dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(second * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
[envelopesLogicMgr OpenRedEnvelopesRequest:warp];
});

}
}

}

}






static __attribute__((constructor)) void _logosLocalCtor_fa8de965(int __unused argc, char __unused **argv, char __unused **envp){



{Class _logos_class$group4$BaseMsgContentViewController = objc_getClass("BaseMsgContentViewController"); MSHookMessageEx(_logos_class$group4$BaseMsgContentViewController, @selector(addMessageNode:layout:addMoreMsg:), (IMP)&_logos_method$group4$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$, (IMP*)&_logos_orig$group4$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$);Class _logos_class$group4$BaseMsgContentLogicController = objc_getClass("BaseMsgContentLogicController"); MSHookMessageEx(_logos_class$group4$BaseMsgContentLogicController, @selector(DidAddMsg:), (IMP)&_logos_method$group4$BaseMsgContentLogicController$DidAddMsg$, (IMP*)&_logos_orig$group4$BaseMsgContentLogicController$DidAddMsg$);MSHookMessageEx(_logos_class$group4$BaseMsgContentLogicController, @selector(OnAddMsg:MsgWrap:), (IMP)&_logos_method$group4$BaseMsgContentLogicController$OnAddMsg$MsgWrap$, (IMP*)&_logos_orig$group4$BaseMsgContentLogicController$OnAddMsg$MsgWrap$);Class _logos_class$group4$CMessageMgr = objc_getClass("CMessageMgr"); MSHookMessageEx(_logos_class$group4$CMessageMgr, @selector(MainThreadNotifyToExt:), (IMP)&_logos_method$group4$CMessageMgr$MainThreadNotifyToExt$, (IMP*)&_logos_orig$group4$CMessageMgr$MainThreadNotifyToExt$);MSHookMessageEx(_logos_class$group4$CMessageMgr, @selector(onNewSyncAddMessage:), (IMP)&_logos_method$group4$CMessageMgr$onNewSyncAddMessage$, (IMP*)&_logos_orig$group4$CMessageMgr$onNewSyncAddMessage$);Class _logos_class$group4$WCRedEnvelopesReceiveHomeView = objc_getClass("WCRedEnvelopesReceiveHomeView"); MSHookMessageEx(_logos_class$group4$WCRedEnvelopesReceiveHomeView, @selector(OnOpenRedEnvelopes), (IMP)&_logos_method$group4$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes, (IMP*)&_logos_orig$group4$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes);Class _logos_class$group4$WCRedEnvelopesReceiveControlLogic = objc_getClass("WCRedEnvelopesReceiveControlLogic"); MSHookMessageEx(_logos_class$group4$WCRedEnvelopesReceiveControlLogic, @selector(WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes), (IMP)&_logos_method$group4$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes, (IMP*)&_logos_orig$group4$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes);Class _logos_class$group4$WCRedEnvelopesLogicMgr = objc_getClass("WCRedEnvelopesLogicMgr"); MSHookMessageEx(_logos_class$group4$WCRedEnvelopesLogicMgr, @selector(ReceiverQueryRedEnvelopesRequest:), (IMP)&_logos_method$group4$WCRedEnvelopesLogicMgr$ReceiverQueryRedEnvelopesRequest$, (IMP*)&_logos_orig$group4$WCRedEnvelopesLogicMgr$ReceiverQueryRedEnvelopesRequest$);MSHookMessageEx(_logos_class$group4$WCRedEnvelopesLogicMgr, @selector(OnWCToHongbaoCommonResponse:Request:), (IMP)&_logos_method$group4$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$, (IMP*)&_logos_orig$group4$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$);}  }
