import React from 'react';
import { Button, StyleSheet, View } from 'react-native';
import AudioDucking from 'react-native-audio-ducking';

export default function App() {
  async function duckAudio() {
    try {
      await AudioDucking.duckAudio();
    } catch (error) {
      console.log('duckAudio error', error);
    }
  }

  async function reDuckAudio() {
    try {
      await AudioDucking.reDuckAudio();
    } catch (error) {
      console.log('reDuckAudio error', error);
    }
  }

  async function removeAudioDucking() {
    try {
      await AudioDucking.removeAudioDucking();
    } catch (error) {
      console.log('removeAudioDucking error', error);
    }
  }

  return (
    <View style={styles.container}>
      <Button title={'Duck Audio'} onPress={duckAudio} />
      <Button title={'Re-duck audio'} onPress={reDuckAudio} />
      <Button title={'Remove audio ducking'} onPress={removeAudioDucking} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
