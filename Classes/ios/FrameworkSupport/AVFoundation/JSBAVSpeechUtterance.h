#import <AVFoundation/AVBase.h>
#import <Foundation/Foundation.h>

@import AVFoundation;
@import JavaScriptCore;

@protocol JSBNSObject;

@protocol JSBAVSpeechUtterance <JSExport, JSBNSObject>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

@property (nonatomic) float volume;
@property (nonatomic) NSTimeInterval preUtteranceDelay;
@property (nonatomic) float rate;
@property (nonatomic, readonly) NSString *speechString;
@property (nonatomic, readonly, getter = isSpeaking) BOOL speaking;
@property (nonatomic, readonly, getter = isPaused) BOOL paused;
@property (nonatomic, readonly) NSString *language;
@property (nonatomic, retain) AVSpeechSynthesisVoice *voice;
@property (nonatomic) NSTimeInterval postUtteranceDelay;
@property (nonatomic, assign) id delegate;
@property (nonatomic) float pitchMultiplier;

+ (AVSpeechUtterance *)speechUtteranceWithString:(NSString *)string;

- (AVSpeechUtterance *)initWithString:(NSString *)string;

#pragma clang diagnostic pop

@end
