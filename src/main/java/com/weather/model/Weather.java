package com.weather.model;

import lombok.Data;

import java.util.List;

@Data
public class Weather {

    private Integer currentTemperature;

    private String description;

    private List<WeatherForecast> weatherForecast;

    @Data
    public static class WeatherForecast {

        private String date;

        private Integer max;

        private Integer min;

        private String description;
    }
}
