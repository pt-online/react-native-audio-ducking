# react-native-audio-ducking

React Native module for audio ducking (temporarily lowering the volume level of audio)

## Installation

```sh
npm install react-native-audio-ducking
```

## Usage

```js
import AudioDucking from "react-native-audio-ducking";

// ...

  async function duckAudio() {
    try {
      await AudioDucking.duckAudio();
    } catch (error) {
      console.log('duckAudio error', error);
    }
  }
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
