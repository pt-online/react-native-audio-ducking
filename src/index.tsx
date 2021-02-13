import { NativeModules } from 'react-native';

type AudioDuckingType = {
  duckAudio(): Promise<void>;
  removeAudioDucking(): Promise<void>;
};

const { AudioDucking } = NativeModules;

export default AudioDucking as AudioDuckingType;
