import React, { Component } from 'react'
import {
  View, 
  FlatList
} from 'react-native'
import styles from '../WeatherList/styles'
import WeatherItem from './WeatherItem'

export default class WeatherList extends Component {

  constructor(props) {
    super(props)
  }

  _renderItem = ({item}) => {
    return(
      <WeatherItem 
        stateName={item.weather_state_name}
        windDirection={item.wind_direction_compass}
        created={item.created}
        minTemp={item.min_temp}
        maxTemp={item.max_temp}
        airPressure={item.air_pressure}
        humidity={item.humidity}
      />
    )
  }

  _renderSeparator = () => {
    return (
      <View
        style={styles.separator}
      />
    )
  }

  render() {

    const data = this.props['list']

    return (
      <View style={styles.container}>
        <FlatList 
          data={data}
          renderItem={this._renderItem}
          keyExtractor={item => `${item.id}`}
          ItemSeparatorComponent={this._renderSeparator}
        />
      </View>
    )
  }
}
