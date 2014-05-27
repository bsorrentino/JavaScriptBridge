//
//  NSNotificationCenter+JavaScriptBridge.m
//  CordovaJSBridgeApp
//
//  Created by Bartolomeo Sorrentino on 02/05/14.
//
//

#import "NSNotificationCenter+JavaScriptBridge.h"
#import "JSBMessageForwarding.h"

@implementation NSNotificationCenter (JavaScriptBridge)


- (void)JSB_postNotificationName:(NSString *)name info:(NSDictionary *)info
{
    NSAssert(name, @"parameter name is nil!");
    if (!name ) {
        return;
    }
    [self postNotificationName:name object:nil userInfo:info];
}

- (JSValue*)JSB_addObserverForName:(NSString *)name handler:(JSValue *)handler
{
    JSContext *context = [JSContext currentContext];
    
    NSAssert(name, @"parameter name is nil!");
    if (!name ) {
        return [JSValue valueWithUndefinedInContext:context];
    }
    NSAssert(handler, @"parameter handler is nil!");
    if (!handler ) {
        return [JSValue valueWithUndefinedInContext:context];
    }
    
    
    __block id currentSelf = context[@"self"];
    
    if (!handler.isUndefined) {
        
        id observer = [self addObserverForName:name object:nil queue:nil usingBlock:^(NSNotification *note) {
            //dispatchFunction(currentSelf, handler, @[note] );
            
            handler.context[@"self"] = currentSelf;
            [handler callWithArguments:@[note]];
            
            handler.context[@"self"] = nil;
            
        }];
        
        return [JSValue valueWithObject:observer inContext:context];
    }
    
    return nil;
}
@end
