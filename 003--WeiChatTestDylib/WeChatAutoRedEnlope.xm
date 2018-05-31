#import "Header.h"
#import "WeChatMessageWarp.h"
#import <UIKit/UIKit.h>

//红包逻辑分析
%group group4
%hook BaseMsgContentViewController

- (void)addMessageNode:(id)arg1 layout:(_Bool)arg2 addMoreMsg:(_Bool)arg3
{
%orig;
}
%end

%hook BaseMsgContentLogicController
- (void)DidAddMsg:(id)arg1{
%orig;
}
- (void)OnAddMsg:(id)arg1 MsgWrap:(id)arg2{
%orig;
}
%end

%hook CMessageMgr
- (void)MainThreadNotifyToExt:(id)arg1{
%orig;
}
/*
{m_uiMesLocalID=9, m_ui64MesSvrID=6148490851876887842, m_nsFromUsr=wxi*241~19, m_nsToUsr=wxi*l12~19, m_uiStatus=3, type=1, msgSource="<msgsource><sequence_id>634140695</sequence_id></msgsource>"}
CMessageWrap
*/
//type=49就是红包消息
- (void)onNewSyncAddMessage:(CMessageWrap *)m_Wrap{


if( MSHookIvar<unsigned int>(m_Wrap,"m_uiMessageType") != 49 ){
%orig;
return;
}
if([WCDefaults boolForKey:WCSWITCHKEY] == NO){//是否开启自动抢红包
%orig;
return;
}
WCPayInfoItem *item =[m_Wrap m_oWCPayInfoItem];
if(item == nil){
return;
}
NSString *url =[item  m_c2cNativeUrl];
NSInteger length = [@"wxpay://c2cbizmessagehandler/hongbao/receivehongbao?" length];
id componets = [url substringFromIndex:length];
NSDictionary *dictionary=[%c(WCBizUtil) dictionaryWithDecodedComponets:componets separator:@"&"];
NSLog(@"dic===%@",dictionary);
NSMutableDictionary *mul_dict =[%c(NSMutableDictionary) dictionary];
[mul_dict setObject:@"1" forKey:@"msgType"];
[mul_dict setObject:dictionary[@"sendid"] forKey:@"sendId"];
[mul_dict setObject:dictionary[@"channelid"] forKey:@"channelId"];
CContactMgr *server =[[%c(MMServiceCenter) defaultCenter] getService:[%c(CContactMgr) class]];
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
//标记是插件抢红包
[mul_dict setObject:@"YES" forKey:@"isMySelfMeryin"];
[share inputQueue:mul_dict];
/*
agreeDuty = 0;
channelId = 1;
inWay = 1;
msgType = 1;
nativeUrl = "wxpay://c2cbizmessagehandler/hongbao/receivehongbao?msgtype=1&channelid=1&sendid=1000039501201805287004922762149&sendusername=wxid_hy6hye79l4q241&ver=6&sign=9995652ef3b076bbc7b626c0272f7cbbb2168732bc1a9af34777acbf4206d97062af9a8e3c84ad8812d45b48039d9c74e2f6fadb01223e74a9361a61947d4a19789abfde732b339ffb17c05c7bd7a2a0";
sendId = 1000039501201805287004922762149;
*/
//点击红包消息调用的方法

WCRedEnvelopesLogicMgr *envelopesLogicMgr = [[%c(MMServiceCenter) defaultCenter] getService:[%c(WCRedEnvelopesLogicMgr) class]];
NSMutableDictionary *param =[%c(NSMutableDictionary) dictionary];
[param setObject:@"1" forKey:@"msgType"];
[param setObject:dictionary[@"channelid"] forKey:@"channelId"];
[param setObject:@"0" forKey:@"agreeDuty"];
[param setObject:@"1" forKey:@"inWay"];
if([m_nsUsrName containsString:@"@chatroom"]){//群红包
[param setObject:@"0" forKey:@"inWay"];
}
[param setObject:dictionary[@"sendid"] forKey:@"sendId"];
[param setObject:url forKey:@"nativeUrl"];
[envelopesLogicMgr ReceiverQueryRedEnvelopesRequest:param];

}
%end

%hook WCRedEnvelopesReceiveHomeView
- (void)OnOpenRedEnvelopes{
%orig;

//    NSDictionary *dict = MSHookIvar<NSDictionary*>(self,"m_dicBaseInfo");
//    NSArray *arr = dict.allKeys;
//    for(int i=0;i<arr.count;i++){
//        NSLog(@"%@:%@",arr[i],[dict objectForKey:arr[i]]);
//    }
//    id delegate = MSHookIvar<id >(self,"m_delegate");
//    NSLog(@"---%@",[delegate class]);
}
%end

%hook WCRedEnvelopesReceiveControlLogic

//开红包
- (void)WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes{
%orig;
//    WCRedEnvelopesControlData *m_data =  MSHookIvar<WCRedEnvelopesControlData* >(self,"m_data");
//    CMessageWrap *m_Wrap =[m_data m_oSelectedMessageWrap];
//    WCPayInfoItem *item =[m_Wrap m_oWCPayInfoItem];
//    NSString *url =[item  m_c2cNativeUrl];
//    NSInteger length = [@"wxpay://c2cbizmessagehandler/hongbao/receivehongbao?" length];
//    id componets = [url substringFromIndex:length];
//    //调用类方法 [%c(类名称)  方法名]
//    NSDictionary *dictionary=[%c(WCBizUtil) dictionaryWithDecodedComponets:componets separator:@"&"];
//    NSLog(@"dic===%@",dictionary);
//        NSMutableDictionary *mul_dict =[%c(NSMutableDictionary) dictionary];
//        [mul_dict setObject:@"1" forKey:@"msgType"];
//        [mul_dict setObject:dictionary[@"sendid"] forKey:@"sendId"];
//        [mul_dict setObject:dictionary[@"channelid"] forKey:@"channelId"];
//        CContactMgr *server =[[%c(MMServiceCenter) defaultCenter] getService:[%c(CContactMgr) class]];
//        CContact *contact = [server getSelfContact];
//        id  displayName = [contact getContactDisplayName];
//        [mul_dict setObject:displayName forKey:@"nickName"];
//        id m_nsHeadImgUrl = [contact m_nsHeadImgUrl];
//        [mul_dict setObject:m_nsHeadImgUrl forKey:@"headImg"];
//        CMessageWrap *warp =[m_data m_oSelectedMessageWrap];
//
//        if ( warp )
//        {
//            [mul_dict setObject:url forKey:@"nativeUrl"];
//
//        }
//        MMMsgLogicManager *logicserver =[[%c(MMServiceCenter) defaultCenter] getService:[%c(MMMsgLogicManager) class]];
//        WeixinContentLogicController *currentLogicController = [logicserver GetCurrentLogicController];
//       NSLog(@"--%@",[currentLogicController class]);
//        if ( currentLogicController )
//        {
//            id m_contact =[currentLogicController m_contact];
//            if ( m_contact )
//            {
//                NSString *m_nsUsrName =[m_contact m_nsUsrName];
//                if ( m_nsUsrName )
//                {
//                    [mul_dict setObject:m_nsUsrName forKey:@"sessionUserName"];
//                }
//            }
//        }
//        NSDictionary  *m_struct = [m_data m_structDicRedEnvelopesBaseInfo];
//    NSString *timingIdentifier= [m_struct objectForKey:@"timingIdentifier"];
//        if ( [timingIdentifier length])
//        { [mul_dict setObject:timingIdentifier forKey:@"timingIdentifier"];}
//
//        WCPayLogicMgr *payLogicMgr =[[%c(MMServiceCenter) defaultCenter] getService:[%c(WCPayLogicMgr) class]];
//        [payLogicMgr setRealnameReportScene:1003];
//    id subScript = [m_struct objectForKeyedSubscript:@"agree_duty"];
//    [payLogicMgr checkHongbaoOpenLicense:subScript acceptCallback:^(){
//       WCRedEnvelopesLogicMgr *envelopesLogicMgr = [[%c(MMServiceCenter) defaultCenter] getService:[%c(WCRedEnvelopesLogicMgr) class]];
//        [envelopesLogicMgr OpenRedEnvelopesRequest:mul_dict];
//    }denyCallback:^(){
//
//    }];

}
%end

%hook WCRedEnvelopesLogicMgr
//点击红包消息
- (void)ReceiverQueryRedEnvelopesRequest:(NSMutableDictionary *)arg1{
%orig;
}


- (void)OnWCToHongbaoCommonResponse:(HongBaoRes *)arg1 Request:(id)arg2
{
%orig;

NSLog(@"platMsg:%@",arg1.platMsg);
NSLog(@"cgiCmdid:%d",arg1.cgiCmdid);
NSLog(@"platRet:%d",arg1.platRet);
NSLog(@"errorType:%d",arg1.errorType);
NSLog(@"----errorMsg:%@--------------",arg1.errorMsg);
//cgiCmdid==3，点击红包消息,没有被抢过的红包
//    HongBaoRes的retText中：
//    receiveStatus == 0没有抢过的红包 receiveStatus == 2抢过的红包；isSender==0自己不是发红包消息的人;isSender==1自己发的红包

NSError *error;
NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:arg1.retText.buffer options:NSJSONReadingMutableContainers error:&error];
NSString *receiveStatus =[NSString stringWithFormat:@"%@",responseDict[@"receiveStatus"]];
if(arg1 !=nil && arg2 !=nil && arg1.cgiCmdid==3 && [receiveStatus isEqualToString:@"0"])//没有被抢过的红包
{

NSString *timingIdentifier = responseDict[@"timingIdentifier"];
WeChatMessageWarp *share = [WeChatMessageWarp shareInstanceQueue];
NSMutableDictionary *warp = [share getParamQueue];
NSString *flag = [warp objectForKey:@"isMySelfMeryin"];
if(![flag isEqualToString:@"YES"]){//自己写的插件抢红包
return;
}
[warp removeObjectForKey:@"isMySelfMeryin"];
if(timingIdentifier.length >0 && warp.count >0){
[warp setObject:timingIdentifier forKey:@"timingIdentifier"];

//开始开红包
WCRedEnvelopesLogicMgr *envelopesLogicMgr = [[%c(MMServiceCenter) defaultCenter] getService:[%c(WCRedEnvelopesLogicMgr) class]];
if(envelopesLogicMgr){
//延迟抢红包时间
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
%end

%end



%ctor{
%init(group4)

}
