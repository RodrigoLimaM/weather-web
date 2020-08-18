<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Livro de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
        <c:url value="/resources/css" var="cssPath" />
        <link rel="stylesheet" href="${cssPath }/bootstrap.min.css" />
        <link rel="stylesheet" href="${cssPath }/bootstrap-theme.min.css" />
    </head>
    <body>
        <div class="container">
            HOJE: ${weather.currentTemperature} graus - ${weather.description}
            <br>
            <c:forEach items="${weather.weatherForecast }" var="forecast">
                ${forecast.date }:
                ${forecast.max } maxima |
                ${forecast.min } minima -
                ${forecast.description }
                <br>
            </c:forEach>
        </div>
    </body>
</html>