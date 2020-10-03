import UIKit
import AVFoundation
extension String: Error {}
@objc(AudioDucking)
class AudioDucking: NSObject {

    @objc(duckAudio:withRejecter:)
    func duckAudio(resolve:@escaping RCTPromiseResolveBlock,reject:@escaping RCTPromiseRejectBlock)-> Void {
                do{
                    let audioSession = AVAudioSession.sharedInstance()
                    try audioSession.setCategory(AVAudioSession.Category.playback,options:AVAudioSession.CategoryOptions.duckOthers);
                    try AVAudioSession.sharedInstance().setMode(.default);
                    try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                    resolve(true)
                }
                catch let error {
                    reject("Ducking something went wrong", error.localizedDescription, error)
                }
    }

    @objc(reDuckAudio:withRejecter:)
    func reDuckAudio(resolve:@escaping RCTPromiseResolveBlock,reject:@escaping RCTPromiseRejectBlock) -> Void{
        do{
                    let audioSession = AVAudioSession.sharedInstance()
                    try AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
                    try audioSession.setCategory(AVAudioSession.Category.playback,options:AVAudioSession.CategoryOptions.duckOthers);
                    try AVAudioSession.sharedInstance().setMode(.default);
                    try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                     resolve(true)
                }
                catch let error {
                    reject("Re-duck audio something went wrong", error.localizedDescription, error)
                }
    }

    @objc(removeAudioDucking:withRejecter:)
    func removeAudioDucking(resolve:@escaping RCTPromiseResolveBlock,reject:@escaping RCTPromiseRejectBlock)-> Void {
                do{
                    try AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
                      resolve(true)
                }
                catch let error {
                    reject("Remove ducking something went wrong", error.localizedDescription, error)
                }
    }

}
