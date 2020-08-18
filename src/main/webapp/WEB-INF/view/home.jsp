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
            <form:form action="${s:mvcUrl('WC#getWeather').build() }" method="GET"
                modelAttribute="weatherRequest" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Tipo de temperatura</label>
                    <br>
                    <form:radiobutton path = "type" value = "celsius" label = "Celcius" />
                    <form:radiobutton path = "type" value = "fahrenheit" label = "Fahrenheit" />
                    <form:radiobutton path = "type" value = "kelvin" label = "Kelvin" />
                </div>
                <div class="form-group">
                    <label>Cidade</label>
                    <form:input path="city" cssClass="form-control"/>
                </div>
                <button type="submit" class="btn btn-primary">Ver temperatura</button>
            </form:form>
        </div>
    </body>
</html>