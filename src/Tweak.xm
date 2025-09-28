#import <Foundation/Foundation.h>

#import "../Preferences/Preferences.h"

%ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)LoadPreferences, (CFStringRef)PreferencesReloadNotification, NULL, CFNotificationSuspensionBehaviorCoalesce);
    LoadPreferences();
}
