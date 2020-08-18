<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Weather WEB</title>
        <c:url value="/resources/css" var="cssPath" />
        <link rel="stylesheet" href="${cssPath }/bootstrap.min.css" />
        <link rel="stylesheet" href="${cssPath }/bootstrap-theme.min.css" />

        <style type="text/css">
            body {
                padding: 2% 0%;
            }
        </style>

    </head>
    <body>

        <div class="container">
            <form:form action="${s:mvcUrl('WC#getWeather').build() }" method="GET"
                modelAttribute="weatherRequest" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Tipo de temperatura</label>
                    <br>
                    <form:radiobutton path = "type" value = "celsius" label = "Celcius" checked="true"/>
                    <form:radiobutton path = "type" value = "fahrenheit" label = "Fahrenheit" />
                    <form:radiobutton path = "type" value = "kelvin" label = "Kelvin" />
                </div>
                <div class="form-group">
                    <label>Cidade</label>
                    <form:input path="city" cssClass="form-control"/>
                </div>
                <button type="submit" class="btn btn-primary">Ver temperatura</button>
            </form:form>

            <c:if test="${weather != null}">
                <br>
                <h1><center>Agora: ${weather.currentTemperature} graus - ${weather.description}</center></h1>
                <br>
                <table class="table table-bordered table-striped table-hover">
                    <tr>
                        <th>Data</th>
                        <th>Maxima</th>
                        <th>Minima</th>
                        <th>Descricao</th>
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
        </div>
    </body>
</html>