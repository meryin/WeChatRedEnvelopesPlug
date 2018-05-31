//
//  Header.h
//  003--WeiChatTest
//
//  Created by mac on 2018/5/16.
//  Copyright © 2018年 H. All rights reserved.
//

#define WCDefaults [NSUserDefaults standardUserDefaults]
#define WCSWITCHKEY @"WCSWITCHKEY"
#define WCTIMEKEY @"WCTIMEKEY"
#import <UIKit/UIKit.h>


@interface WCAccountLoginFirstViewController : UIViewController

- (void)clickToLogin;


@end




@interface WCAccountLoginControlLogic : NSObject 



- (void)onFirstViewLogin;

@end

@interface MMTableViewInfo:NSObject
- (long long)numberOfSectionsInTableView:(id)arg1;
-(void)switchChang:(UISwitch *)switchView;
@end

@interface NewSettingViewController:UIViewController

- (void)keyboardWillShow:(NSNotification *)note;
- (void)keyboardWillHide:(NSNotification *)note;
- (void)textFieldDidChangeValue:(NSNotification *)notification;
@end

@interface WCRedEnvelopesReceiveHomeView:UIView
{
    id m_delegate;
    NSDictionary *m_dicBaseInfo;
}
@end

@interface WCPayInfoItem:NSObject
@property(retain, nonatomic) NSString *m_c2cNativeUrl;
@end
@interface CMessageWrap:NSObject
@property(retain, nonatomic) WCPayInfoItem *m_oWCPayInfoItem;
@end

@interface WCRedEnvelopesControlData:NSObject
@property(retain, nonatomic) CMessageWrap *m_oSelectedMessageWrap;
@property(retain, nonatomic) NSDictionary *m_structDicRedEnvelopesBaseInfo; 
@end

@interface WCBizUtil : NSObject
+ (id)dictionaryWithDecodedComponets:(id)arg1 separator:(id)arg2;
@end
@interface MMServiceCenter : NSObject
+(id)defaultCenter;
-(id)getService:(id)arg1;
@end

@interface CContactMgr: NSObject
- (id)getSelfContact;
@end

@interface CBaseContact : NSObject
- (id)getContactDisplayName;
@property(retain, nonatomic) NSString *m_nsHeadImgUrl;
@property(retain, nonatomic) NSString *m_nsUsrName; 
@end

@interface CContact: CBaseContact

@end
@interface MMMsgLogicManager: NSObject
- (id)GetCurrentLogicController;
@end

@interface WeixinContentLogicController: NSObject
@property(retain, nonatomic) CBaseContact *m_contact;
@end

@interface WCPayLogicMgr:NSObject
- (void)setRealnameReportScene:(unsigned int)arg1;
- (void)checkHongbaoOpenLicense:(id)arg1 acceptCallback:(void(^)())arg2 denyCallback:(void(^)())arg3;
@end

@interface WCRedEnvelopesLogicMgr:NSObject
- (void)OpenRedEnvelopesRequest:(id)arg1;
- (void)ReceiverQueryRedEnvelopesRequest:(NSMutableDictionary *)arg1;
@end

@interface SKBuiltinBuffer_t : NSObject
@property(retain, nonatomic) NSData *buffer; 
@property(nonatomic) unsigned int iLen;

@end
@interface SKBuiltinString_t : NSObject
@property(retain, nonatomic) NSString *string;
@end

@interface BaseResponse : NSObject
@property(retain, nonatomic) SKBuiltinString_t *errMsg;
@property(nonatomic) int ret;

@end
@interface HongBaoRes : NSObject
@property(retain, nonatomic) BaseResponse *baseResponse;
@property(nonatomic) int cgiCmdid; // @dynamic cgiCmdid;
@property(retain, nonatomic) NSString *errorMsg; // @dynamic errorMsg;
@property(nonatomic) int errorType; // @dynamic errorType;
@property(retain, nonatomic) NSString *platMsg; // @dynamic platMsg;
@property(nonatomic) int platRet; // @dynamic platRet;
@property(retain, nonatomic) SKBuiltinBuffer_t *retText; // @dynamic retText;
@end
