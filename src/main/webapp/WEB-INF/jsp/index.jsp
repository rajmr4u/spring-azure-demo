<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="ISO-8859-1">
    <title>Sign Up - Application Insights Demo</title>
   <link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
 <c:url value="/css/main.css" var="jstlCss"/>
<link href="${jstlCss}" rel="stylesheet" />
</head>

<body>
    <div class="container text-center">
        <h1>Welcome to Application Insights Demo</h1>
        <h3><a href="users">List of Users</a></h3>
        <h3><a href="register">Register</a></h3>
        <h3><a href="login">Login</a></h3>
    </div>
     
</body>
</html>