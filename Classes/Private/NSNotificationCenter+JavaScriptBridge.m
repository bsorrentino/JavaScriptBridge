//
//  NSNotificationCenter+JavaScriptBridge.m
//  CordovaJSBridgeApp
//
//  Created by Bartolomeo Sorrentino on 02/05/14.
//
//

#import "NSNotificationCenter+JavaScriptBridge.h"

@implementation NSNotificationCenter (JavaScriptBridge)


- (void)JSB_postNotificationName:(NSString *)name info:(NSDictionary *)info
{
    [self postNotificationName:name object:nil userInfo:info];
}

@end
