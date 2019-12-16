import React, { Component } from 'react'
import {
  StyleSheet, Text, View
} from 'react-native'

export default class WeatherList extends Component {
  render() {
    var contents = this.props['list'].map((weather) => (
      <Text key={weather.id}>
        {weather.min_temp}:{weather.max_temp}
        {'\n'}
      </Text>
    ));
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>2048 High Scores!</Text>
        <Text style={styles.scores}>{contents}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

// Module name
// AppRegistry.registerComponent('RNHighScores', () => RNHighScores);