package com.weather.service;

import com.weather.client.WeatherAPIClient;
import com.weather.model.Weather;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeatherService {

    @Autowired
    WeatherAPIClient weatherAPIClient;

    public Weather getWeather(String city, String temperatureType) {
        return weatherAPIClient.getHGWeather(city, temperatureType).orElse(null);
    }
}
