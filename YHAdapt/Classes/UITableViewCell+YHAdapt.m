//
//  UITableViewCell+YHAdapt.m
//
//  Created by zxl on 2020/10/16.
//

#import "UITableViewCell+YHAdapt.h"
#import <objc/runtime.h>

@implementation UITableViewCell (YHAdapt)

+ (void)load {
    
    SEL sel_original = @selector(addSubview:);
    SEL sel_replace = @selector(addSubviewForiOS14:);
    
    Method method_original = class_getInstanceMethod(self, sel_original);
    Method method_replace = class_getInstanceMethod(self, sel_replace);
    method_exchangeImplementations(method_original, method_replace);
}

/// iOS14兼容
/// 因为UITableViewCell中使用 [cell addSubview:]方式添加的控件，
/// 会显示在contentView的下层，
/// 控件会被contentView遮挡并无法响应交互事件。
/// @param view 子视图

- (void)addSubviewForiOS14:(UIView *)view {
    
    // 避免视图添加自己 UITableViewCellContentView addSubView self
    if ([view isKindOfClass:NSClassFromString(@"UITableViewCellContentView")]) {
        [super addSubview:view];
//        [self addSubviewForiOS14:view];
    } else {
        [self.contentView addSubview:view];
    }
}

@end
