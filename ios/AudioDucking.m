#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(AudioDucking, NSObject)

RCT_EXTERN_METHOD(duckAudio:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(removeAudioDucking:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

@end
