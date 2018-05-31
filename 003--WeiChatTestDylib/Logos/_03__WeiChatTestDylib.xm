// See http://iphonedevwiki.net/index.php/Logos
//titleView



#import "Header.h"

%group group2
%hook WCAccountLoginFirstViewController

- (void)viewDidAppear:(_Bool)arg1{
    %orig;
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeCustom];
    bu.frame = CGRectMake(10, 100, 100, 100);
    [bu setTitle:@"自己的登录" forState:UIControlStateNormal];
   
    [self.view addSubview:bu];
    bu.center =self.view.center;
    [bu addTarget:self action:@selector(clickToLogin) forControlEvents:UIControlEventTouchUpInside];
    
    UIImageView * imgv1 = self.view.subviews[0].subviews[0];
    imgv1.image = [UIImage imageNamed:@"@1xGroup 3.png"];
    
}
%new
- (void)clickToLogin
{
    UIButton *btn = self.view.subviews[1].subviews[0];
    NSArray *arr =[ btn.allTargets allObjects];
    WCAccountLoginControlLogic *vc = arr[0];
    [vc onFirstViewLogin];
    
}

%end

%end
%ctor{
    %init(group2)
    
}





