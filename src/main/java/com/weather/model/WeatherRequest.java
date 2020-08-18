package com.weather.model;

import lombok.Data;

@Data
public class WeatherRequest {

    private String type;

    private String city;
}
