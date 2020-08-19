<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Weather WEB</title>
        <c:url value="/resources/css" var="cssPath" />
        <link rel="stylesheet" href="${cssPath }/bootstrap.css" />
        <link rel="stylesheet" href="${cssPath }/bootstrap-theme.min.css" />

        <style type="text/css">
            body {
                padding: 2% 0%;
                color: #FFFFFF;
            }
        </style>

    </head>
    <body style="background-color:#000000;">

        <div class="container">
            <form:form action="${s:mvcUrl('WC#getWeather').build() }" method="GET"
                modelAttribute="weatherRequest" enctype="multipart/form-data">
                <center>
                <h3><label>Tipo de temperatura</label></h3>
                <div class="form-check form-check-inline">
                  <form:radiobutton class="form-check-input" path="type" value ="celsius" checked="true" />
                  <label class="form-check-label" for="celsius">Celsius</label>
                </div>
                <div class="form-check form-check-inline">
                  <form:radiobutton class="form-check-input" path="type" value ="fahrenheit" />
                  <label class="form-check-label" for="fahrenheit">Fahrenheit</label>
                </div>
                <div class="form-check form-check-inline">
                  <form:radiobutton class="form-check-input" path="type" value ="kelvin" />
                  <label class="form-check-label" for="kelvin">Kelvin</label>
                </div>
                <div class="form-group">
                    <h3><label>Cidade</label></h3>
                    <form:input path="city" cssClass="form-control text-center"/>
                </div>
                <button type="submit" class="btn btn-dark btn-lg btn-block">Ver temperatura</button>
                </center>
            </form:form>

            <c:if test="${(weather.currentTemperature == null) and (weather != null)}">
                <center><h3>${weather.description}</h3></center>
            </c:if>

            <c:if test="${weather.currentTemperature != null}">
                <br>
                <h3><center>Agora: ${weather.currentTemperature} graus - ${weather.description}</center></h3>
                <br>
                <table class="table table-hover table-dark">
                    <tr>
                        <th>Data</th>
                        <th>Máxima</th>
                        <th>Mínima</th>
                        <th>Descrição</th>
                    </tr>
                    <c:forEach items="${weather.weatherForecast }" var="forecast">
                        <tr>
                            <td>${forecast.date }</td>
                            <td>${forecast.max }</td>
                            <td>${forecast.min }</td>
                            <td>${forecast.description }</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <c:if test="${weather == null}">
                <center><img alt="some text" src="${contextPath }/resources/images/weather-icon.png"></center>
            </c:if>
        </div>
    </body>
</html>