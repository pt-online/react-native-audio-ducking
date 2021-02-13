package com.reactnativeaudioducking

import android.os.Build
import com.facebook.react.bridge.Promise
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod

class AudioDuckingModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

  var audioDuckingService = AudioDuckingService(reactContext);

  override fun getName(): String {
    return "AudioDucking"
  }

  @ReactMethod
  fun duckAudio(promise: Promise) {
    if (Build.VERSION.SDK_INT >= 26) {
      promise.resolve(audioDuckingService.duckAudioOreo());
    } else if (Build.VERSION.SDK_INT >= 21) {
      promise.resolve(audioDuckingService.duckAudioFroyo());
    } else {
      promise.resolve(audioDuckingService.duckAudioFroyo());
    }
  }

  @ReactMethod
  fun removeAudioDucking(promise: Promise) {
    promise.resolve(audioDuckingService.abandonAudioFocus())
  }

}
