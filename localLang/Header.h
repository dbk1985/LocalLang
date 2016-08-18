//
//  Header.h
//  localLang
//
//  Created by wzkj on 16/8/5.
//  Copyright © 2016年 ywkj. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define LMLanguageChangedNotification @"LMLanguageChangedNotification"
#define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"Lang"]

#endif /* Header_h */
