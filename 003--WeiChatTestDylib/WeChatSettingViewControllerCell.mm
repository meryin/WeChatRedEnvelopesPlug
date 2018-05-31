#line 1 "/Users/mac/Downloads/iOSVIP课/iOS第二期 安全攻防/微信抢红包案例/003--WeiChatTest/WeChatRedEnvelopesPlug/003--WeiChatTestDylib/WeChatSettingViewControllerCell.xm"
#import "Header.h"
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

@class MMTableViewInfo; @class NewSettingViewController; 

static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NewSettingViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("NewSettingViewController"); } return _klass; }
#line 5 "/Users/mac/Downloads/iOSVIP课/iOS第二期 安全攻防/微信抢红包案例/003--WeiChatTest/WeChatRedEnvelopesPlug/003--WeiChatTestDylib/WeChatSettingViewControllerCell.xm"
static void (*_logos_orig$group3$NewSettingViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$group3$NewSettingViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$group3$NewSettingViewController$keyboardWillShow$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, NSNotification *); static void _logos_method$group3$NewSettingViewController$keyboardWillHide$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, NSNotification *); static id (*_logos_orig$group3$MMTableViewInfo$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static id _logos_method$group3$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static long long (*_logos_orig$group3$MMTableViewInfo$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static long long _logos_method$group3$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static long long (*_logos_orig$group3$MMTableViewInfo$numberOfSectionsInTableView$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static long long _logos_method$group3$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static double (*_logos_orig$group3$MMTableViewInfo$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, id); static double _logos_method$group3$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, id); static void (*_logos_orig$group3$MMTableViewInfo$scrollViewWillBeginDragging$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$group3$MMTableViewInfo$scrollViewWillBeginDragging$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$group3$MMTableViewInfo$switchChang$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UISwitch *); static void _logos_method$group3$MMTableViewInfo$textFieldDidChangeValue$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, NSNotification *); 



static void _logos_method$group3$NewSettingViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
_logos_orig$group3$NewSettingViewController$viewDidLoad(self, _cmd);

[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];

[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];

}

static void _logos_method$group3$NewSettingViewController$keyboardWillShow$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * note){
UIView *view = self.view;
CGRect keyVoardRect = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
view.frame = CGRectMake(0,-keyVoardRect.size.height,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
}

static void _logos_method$group3$NewSettingViewController$keyboardWillHide$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * note){
UIView *view = self.view;
view.frame = CGRectMake(0,0,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
}





static id _logos_method$group3$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
if([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()])
{
if([indexPath section] == [self numberOfSectionsInTableView:tableView]-1){
UITableViewCell * cell = nil;
if([indexPath row] == 0){
static NSString * switchCell = @"switchCell";
cell = [tableView dequeueReusableCellWithIdentifier:switchCell];
if(!cell){
cell  = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:switchCell];
}

cell.textLabel.text = @"自动抢红包";
UISwitch * switchView = [[UISwitch alloc] init];
cell.accessoryView = switchView;
switchView.on = [WCDefaults boolForKey:WCSWITCHKEY];
[switchView addTarget:self action:@selector(switchChang:) forControlEvents:(UIControlEventValueChanged)];
cell.imageView.image = [UIImage imageNamed:@"locked"];

}else if([indexPath row] == 1){
static NSString * waitCell = @"waitCell";
cell = [tableView dequeueReusableCellWithIdentifier:waitCell];
if(!cell){
cell  = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:waitCell];
}
cell.textLabel.text = @"等待时间(秒)";
UITextField * textField = [[UITextField alloc] initWithFrame:CGRectMake(0,0,150,40)];
textField.placeholder = @"等待时间";
textField.borderStyle = UITextBorderStyleRoundedRect;
cell.accessoryView = textField;

[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChangeValue:) name:UITextFieldTextDidChangeNotification object:textField];
textField.text = [WCDefaults valueForKey:WCTIMEKEY];
cell.imageView.image = [UIImage imageNamed:@"clock"];
}

cell.backgroundColor = [UIColor whiteColor];
return cell;
}
return _logos_orig$group3$MMTableViewInfo$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);

}
return _logos_orig$group3$MMTableViewInfo$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);
}

static long long _logos_method$group3$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * arg1, NSInteger section) {
if([arg1.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()])
{
NSMutableArray *arr = MSHookIvar<NSMutableArray *>(self,"_arrSections");
NSLog(@"--%@",arr);
if(section == [self numberOfSectionsInTableView:arg1]-1)
{NSLog(@"xxx--%@",arg1);
return 2;
}
return _logos_orig$group3$MMTableViewInfo$tableView$numberOfRowsInSection$(self, _cmd, arg1, section);
}
return _logos_orig$group3$MMTableViewInfo$tableView$numberOfRowsInSection$(self, _cmd, arg1, section);
}

static long long _logos_method$group3$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * arg1) {
if([arg1.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()])
{

return _logos_orig$group3$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, arg1)+1;
}
return _logos_orig$group3$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, arg1);
}
static double _logos_method$group3$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, id indexPath){

if([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()]
&& [indexPath section] == [self numberOfSectionsInTableView:tableView]-1){
return 44;

}

return _logos_orig$group3$MMTableViewInfo$tableView$heightForRowAtIndexPath$(self, _cmd, tableView, indexPath);
}


static void _logos_method$group3$MMTableViewInfo$scrollViewWillBeginDragging$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
_logos_orig$group3$MMTableViewInfo$scrollViewWillBeginDragging$(self, _cmd, arg1);
[MSHookIvar<UITableView *>(self,"_tableView") endEditing:YES];
}


static void _logos_method$group3$MMTableViewInfo$switchChang$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch * switchView){
[WCDefaults setBool:switchView.isOn forKey:WCSWITCHKEY];
[WCDefaults synchronize];
}


static void _logos_method$group3$MMTableViewInfo$textFieldDidChangeValue$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * notification){

UITextField *sender = (UITextField *)[notification object];
[WCDefaults setValue:sender.text forKey:WCTIMEKEY];
[WCDefaults synchronize];
}




static __attribute__((constructor)) void _logosLocalCtor_25183486(int __unused argc, char __unused **argv, char __unused **envp){




{Class _logos_class$group3$NewSettingViewController = objc_getClass("NewSettingViewController"); MSHookMessageEx(_logos_class$group3$NewSettingViewController, @selector(viewDidLoad), (IMP)&_logos_method$group3$NewSettingViewController$viewDidLoad, (IMP*)&_logos_orig$group3$NewSettingViewController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$group3$NewSettingViewController, @selector(keyboardWillShow:), (IMP)&_logos_method$group3$NewSettingViewController$keyboardWillShow$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$group3$NewSettingViewController, @selector(keyboardWillHide:), (IMP)&_logos_method$group3$NewSettingViewController$keyboardWillHide$, _typeEncoding); }Class _logos_class$group3$MMTableViewInfo = objc_getClass("MMTableViewInfo"); MSHookMessageEx(_logos_class$group3$MMTableViewInfo, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$group3$MMTableViewInfo$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$group3$MMTableViewInfo$tableView$cellForRowAtIndexPath$);MSHookMessageEx(_logos_class$group3$MMTableViewInfo, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$group3$MMTableViewInfo$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$group3$MMTableViewInfo$tableView$numberOfRowsInSection$);MSHookMessageEx(_logos_class$group3$MMTableViewInfo, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$group3$MMTableViewInfo$numberOfSectionsInTableView$, (IMP*)&_logos_orig$group3$MMTableViewInfo$numberOfSectionsInTableView$);MSHookMessageEx(_logos_class$group3$MMTableViewInfo, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$group3$MMTableViewInfo$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$group3$MMTableViewInfo$tableView$heightForRowAtIndexPath$);MSHookMessageEx(_logos_class$group3$MMTableViewInfo, @selector(scrollViewWillBeginDragging:), (IMP)&_logos_method$group3$MMTableViewInfo$scrollViewWillBeginDragging$, (IMP*)&_logos_orig$group3$MMTableViewInfo$scrollViewWillBeginDragging$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UISwitch *), strlen(@encode(UISwitch *))); i += strlen(@encode(UISwitch *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$group3$MMTableViewInfo, @selector(switchChang:), (IMP)&_logos_method$group3$MMTableViewInfo$switchChang$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$group3$MMTableViewInfo, @selector(textFieldDidChangeValue:), (IMP)&_logos_method$group3$MMTableViewInfo$textFieldDidChangeValue$, _typeEncoding); }}  }
