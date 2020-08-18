package com.weather.client;

import com.weather.model.Weather;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@FeignClient(name = "WeatherAPIClient", url = "${weather-api.url}")
public interface WeatherAPIClient {

    @GetMapping("/weather")
    Optional<Weather> getHGWeather(@RequestParam String city,
                                   @RequestParam String temperatureType);
}
