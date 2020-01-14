#import "CombinedKeyboard.h"
#import <objc/runtime.h>

#import "AppDelegate.h"

@implementation AppDelegate(BraintreePlugin)

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {

/*
    NSString *bundle_id = [NSBundle mainBundle].bundleIdentifier;
    bundle_id = [bundle_id stringByAppendingString:@".payments"];

    if ([url.scheme localizedCaseInsensitiveCompare:bundle_id] == NSOrderedSame) {
        return [BTAppSwitch handleOpenURL:url options:options];
    }
*/
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:CDVPluginHandleOpenURLNotification object:url]];

    return NO;
}

@end



@implementation CombinedKeyboards

- (void)pluginInitialize {

    /*
    NSString *bundle_id = [NSBundle mainBundle].bundleIdentifier;
    bundle_id = [bundle_id stringByAppendingString:@".payments"];

    [BTAppSwitch setReturnURLScheme:bundle_id];*/
}

- (void)initialize:(CDVInvokedUrlCommand*)command {

    /*
    self.options = [[NSDictionary alloc]init];
    self.options = [command.arguments objectAtIndex:0];

    [self evalJs:@"onRender" object:@{}];*/
}

@end
