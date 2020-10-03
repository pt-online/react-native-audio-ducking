import { NativeModules } from 'react-native';

type AudioDuckingType = {
  multiply(): Promise<number>;
  duckAudio(): Promise<boolean>;
  reDuckAudio(): Promise<boolean>;
  removeAudioDucking(): Promise<boolean>;
};

const { AudioDucking } = NativeModules;

export default AudioDucking as AudioDuckingType;
