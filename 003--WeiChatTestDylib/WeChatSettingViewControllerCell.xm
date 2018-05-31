#import "Header.h"
#import <UIKit/UIKit.h>

//设置界面cell
%group group3

%hook NewSettingViewController
- (void)viewDidLoad
{
%orig;

[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];

[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];

}
%new
- (void)keyboardWillShow:(NSNotification *)note{
UIView *view = self.view;
CGRect keyVoardRect = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
view.frame = CGRectMake(0,-keyVoardRect.size.height,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
}
%new
- (void)keyboardWillHide:(NSNotification *)note{
UIView *view = self.view;
view.frame = CGRectMake(0,0,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
}
%end

%hook MMTableViewInfo

- (id)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
if([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)])//定位到设置界面
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
//监听键盘输入
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChangeValue:) name:UITextFieldTextDidChangeNotification object:textField];
textField.text = [WCDefaults valueForKey:WCTIMEKEY];
cell.imageView.image = [UIImage imageNamed:@"clock"];
}

cell.backgroundColor = [UIColor whiteColor];
return cell;
}
return %orig;

}
return %orig;
}
- (long long)tableView:(UITableView *)arg1 numberOfRowsInSection:(NSInteger)section
{
if([arg1.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)])//定位到设置界面
{
NSMutableArray *arr = MSHookIvar<NSMutableArray *>(self,"_arrSections");
NSLog(@"--%@",arr);
if(section == [self numberOfSectionsInTableView:arg1]-1)
{NSLog(@"xxx--%@",arg1);
return 2;
}
return %orig;
}
return %orig;
}
- (long long)numberOfSectionsInTableView:(UITableView *)arg1
{
if([arg1.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)])//定位到设置界面
{

return %orig+1;
}
return %orig;
}
- (double)tableView:(UITableView *)tableView heightForRowAtIndexPath:(id)indexPath{
//定位设置界面&&最后一组
if([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)]
&& [indexPath section] == [self numberOfSectionsInTableView:tableView]-1){
return 44;

}

return %orig;
}

- (void)scrollViewWillBeginDragging:(id)arg1
{
%orig;
[MSHookIvar<UITableView *>(self,"_tableView") endEditing:YES];
}

%new
-(void)switchChang:(UISwitch *)switchView{
[WCDefaults setBool:switchView.isOn forKey:WCSWITCHKEY];
[WCDefaults synchronize];
}

%new
- (void)textFieldDidChangeValue:(NSNotification *)notification{

UITextField *sender = (UITextField *)[notification object];
[WCDefaults setValue:sender.text forKey:WCTIMEKEY];
[WCDefaults synchronize];
}

%end
%end

%ctor{

%init(group3)

}
