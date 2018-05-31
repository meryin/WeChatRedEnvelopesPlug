#line 1 "/Users/mac/Downloads/iOSVIP课/iOS第二期 安全攻防/微信抢红包案例/003--WeiChatTest/WeChatRedEnvelopesPlug/003--WeiChatTestDylib/Logos/_03__WeiChatTestDylib.xm"





#import "Header.h"


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

@class WCAccountLoginFirstViewController; 


#line 8 "/Users/mac/Downloads/iOSVIP课/iOS第二期 安全攻防/微信抢红包案例/003--WeiChatTest/WeChatRedEnvelopesPlug/003--WeiChatTestDylib/Logos/_03__WeiChatTestDylib.xm"
static void (*_logos_orig$group2$WCAccountLoginFirstViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL WCAccountLoginFirstViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$group2$WCAccountLoginFirstViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL WCAccountLoginFirstViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$group2$WCAccountLoginFirstViewController$clickToLogin(_LOGOS_SELF_TYPE_NORMAL WCAccountLoginFirstViewController* _LOGOS_SELF_CONST, SEL); 


static void _logos_method$group2$WCAccountLoginFirstViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL WCAccountLoginFirstViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1){
    _logos_orig$group2$WCAccountLoginFirstViewController$viewDidAppear$(self, _cmd, arg1);
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeCustom];
    bu.frame = CGRectMake(10, 100, 100, 100);
    [bu setTitle:@"自己的登录" forState:UIControlStateNormal];
   
    [self.view addSubview:bu];
    bu.center =self.view.center;
    [bu addTarget:self action:@selector(clickToLogin) forControlEvents:UIControlEventTouchUpInside];
    
    UIImageView * imgv1 = self.view.subviews[0].subviews[0];
    imgv1.image = [UIImage imageNamed:@"@1xGroup 3.png"];
    
}


static void _logos_method$group2$WCAccountLoginFirstViewController$clickToLogin(_LOGOS_SELF_TYPE_NORMAL WCAccountLoginFirstViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIButton *btn = self.view.subviews[1].subviews[0];
    NSArray *arr =[ btn.allTargets allObjects];
    WCAccountLoginControlLogic *vc = arr[0];
    [vc onFirstViewLogin];
    
}




static __attribute__((constructor)) void _logosLocalCtor_3ecc234f(int __unused argc, char __unused **argv, char __unused **envp){








    {Class _logos_class$group2$WCAccountLoginFirstViewController = objc_getClass("WCAccountLoginFirstViewController"); MSHookMessageEx(_logos_class$group2$WCAccountLoginFirstViewController, @selector(viewDidAppear:), (IMP)&_logos_method$group2$WCAccountLoginFirstViewController$viewDidAppear$, (IMP*)&_logos_orig$group2$WCAccountLoginFirstViewController$viewDidAppear$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$group2$WCAccountLoginFirstViewController, @selector(clickToLogin), (IMP)&_logos_method$group2$WCAccountLoginFirstViewController$clickToLogin, _typeEncoding); }}  }     
