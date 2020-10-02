import { NativeModules } from 'react-native';

type AudioDuckingType = {
  multiply(a: number, b: number): Promise<number>;
};

const { AudioDucking } = NativeModules;

export default AudioDucking as AudioDuckingType;
