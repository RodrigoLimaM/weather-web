package com.weather.controller;

import com.weather.model.WeatherRequest;
import com.weather.service.WeatherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WeatherController {

    @Autowired
    WeatherService weatherService;

    @GetMapping("/")
    public ModelAndView home(WeatherRequest weatherRequest) {
        return new ModelAndView("home");
    }

    @GetMapping("/weather")
    public ModelAndView getWeather(WeatherRequest weatherRequest) {
        return new ModelAndView("weather")
                .addObject("weather",
                        weatherService.getWeather(weatherRequest.getCity(),
                                weatherRequest.getType()));
    }
}
