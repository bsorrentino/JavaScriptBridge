#import <AVFoundation/AVBase.h>
#import <AVFoundation/AVAsset.h>
#import <AVFoundation/AVVideoCompositing.h>
#import <Foundation/Foundation.h>
#import <CoreVideo/CoreVideo.h>
#import <CoreMedia/CMTime.h>
#import <CoreMedia/CMTimeRange.h>

@import AVFoundation;
@import JavaScriptCore;

@protocol JSBAVVideoCompositionInstruction;

@protocol JSBAVMutableVideoCompositionInstruction <JSExport, JSBAVVideoCompositionInstruction>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

@property (nonatomic, readonly) CMPersistentTrackID passthroughTrackID;
@property (nonatomic, retain) __attribute__ ((NSObject)) CGColorRef backgroundColor;
@property (nonatomic, readonly) float renderScale;
@property (nonatomic, retain, readonly) AVVideoCompositionCoreAnimationTool *animationTool;
@property (nonatomic, readonly) CGSize renderSize;
@property (nonatomic, readonly) CMTime frameDuration;
@property (nonatomic, retain, readonly) Class customVideoCompositorClass;
@property (nonatomic, copy, readonly) NSArray *layerInstructions;
@property (nonatomic, assign, readonly) CMTimeRange timeRange;
@property (nonatomic, readonly) NSArray *requiredSourceTrackIDs;
@property (nonatomic, assign, readonly) CMPersistentTrackID trackID;
@property (nonatomic, copy, readonly) NSArray *instructions;
@property (nonatomic, assign, readonly) BOOL enablePostProcessing;

+ (AVMutableVideoCompositionInstruction *)videoCompositionInstruction;

#pragma clang diagnostic pop

@end
