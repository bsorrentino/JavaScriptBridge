#import "JSBPassKit.h"
#import "JSBPKPass.h"
#import "JSBPKPassLibrary.h"
#import "JSBPKAddPassesViewController.h"

@import ObjectiveC;

@implementation JSBPassKit

+ (void)addScriptingSupportToContext:(JSContext *)context
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    
#ifndef __IPHONE_7_1
    class_addProtocol([PKPass class], @protocol(JSBPKPass));
    context[@"PKPass"] = [PKPass class];
#endif
    
    class_addProtocol([PKPassLibrary class], @protocol(JSBPKPassLibrary));
    context[@"PKPassLibrary"] = [PKPassLibrary class];

    class_addProtocol([PKAddPassesViewController class], @protocol(JSBPKAddPassesViewController));
    context[@"PKAddPassesViewController"] = [PKAddPassesViewController class];

#pragma clang diagnostic pop
}

@end
