//
//  DoraemonFLEXPlugin.m
//  DoraemonKit
//
//  Created by huipeng on 2023/2/24.
//

#import "DoraemonFLEXPlugin.h"

#if __has_include(<FLEX/FLEX.h>)
#import <FLEX/FLEXManager.h>
#import "DoraemonHomeWindow.h"
#else
#endif

@implementation DoraemonFLEXPlugin

- (void)pluginDidLoad {
#if __has_include(<FLEX/FLEX.h>)
    [[FLEXManager sharedManager] showExplorer];
    [[DoraemonHomeWindow shareInstance] hide];
#else
#endif
}

@end
