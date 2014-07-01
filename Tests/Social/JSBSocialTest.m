#import <XCTest/XCTest.h>
#import <JavaScriptBridgeLib/JavaScriptBridge.h>
#import <JavaScriptBridgeLib/JavaScriptBridge.h>


@import JavaScriptCore;

@interface JSBSocialTests : XCTestCase

@end

@implementation JSBSocialTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testInstantiation
{
    JSContext *context = [[JSContext alloc] init];
    [context addScriptingSupport:@"Foundation"];
    [context addScriptingSupport:@"Social"];
    
    JSValue *value = nil;
    
    [context evaluateScript:@"var slrequest = SLRequest.requestForServiceTypeRequestMethodURLParameters('com.apple.social.twitter', 0, NSURL.URLWithString('https://api.twitter.com/1/statuses/home_timeline.json'), null);"];
    value = context[@"slrequest"];
    XCTAssertTrue(value && !value.isUndefined);

    [context evaluateScript:@"var slcomposeviewcontroller = SLComposeViewController.new();"];
    value = context[@"slcomposeviewcontroller"];
    XCTAssertTrue(value && !value.isUndefined);

}

@end
