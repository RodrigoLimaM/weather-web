package com.weather.model;

import lombok.Builder;
import lombok.Data;
import lombok.NonNull;

import java.util.List;

@Data
@Builder
public class Weather {

    private Integer currentTemperature;

    @NonNull
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
