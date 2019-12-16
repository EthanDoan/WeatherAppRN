import React, { Component } from 'react'
import {
  View, Text
} from 'react-native'
import styles from './styles'
import PropTypes from 'prop-types'


export default class WeatherItem extends Component {

  static propTypes = {
    stateName: PropTypes.string.isRequired,
    windDirection: PropTypes.string.isRequired,
    created: PropTypes.string.isRequired,
    minTemp: PropTypes.number.isRequired,
    maxTemp: PropTypes.number.isRequired,
    airPressure: PropTypes.number.isRequired,
    humidity: PropTypes.number.isRequired
  }

  constructor(props) {
    super(props)
  }

  render() {

    const {
      stateName, windDirection, created, minTemp, maxTemp, airPressure, humidity
    } = this.props

    return (
      <View style={styles.itemContainer}>
        <Text style={styles.itemText}>{`state name: ${stateName}`}</Text>
        <Text style={styles.itemText}>{`wind direction: ${windDirection}`}</Text>
        <Text style={styles.itemText}>{`created: ${created}`}</Text>
        <Text style={styles.itemText}>{`min temp: ${minTemp}`}</Text>
        <Text style={styles.itemText}>{`max temp: ${maxTemp}`}</Text>
        <Text style={styles.itemText}>{`air pressure: ${airPressure}`}</Text>
        <Text style={styles.itemText}>{`humidity: ${humidity}`}</Text>
      </View>
    )
  }
}