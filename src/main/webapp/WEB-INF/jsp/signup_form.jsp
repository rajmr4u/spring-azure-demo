<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="ISO-8859-1">
    <title>Sign Up - Application Insights Demo</title>
   <link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
</head>
<body>
    <div class="container text-center">
        <div>
            <h1>User Registration - Sign Up</h1>
        </div>
        <form th:action="@{/logon}" th:object="${user}"
            method="post" style="max-width: 600px; margin: 0 auto;">
        <div class="m-3">
            <div class="form-group row">
                <label class="col-4 col-form-label">E-mail: </label>
                <div class="col-8">
                    <input type="email" name="email" th:field="*{email}" class="form-control" required />
                </div>
            </div>
             
            <div class="form-group row">
                <label class="col-4 col-form-label">Password: </label>
                <div class="col-8">
                    <input type="password" name="password" th:field="*{password}" class="form-control"
                            required minlength="6" maxlength="10"/>
                </div>
            </div>
             
            <div class="form-group row">
                <label class="col-4 col-form-label">First Name: </label>
                <div class="col-8">
                    <input type="text" name="firstName" th:field="*{firstName}" class="form-control"
                            required minlength="2" maxlength="20"/>
                </div>
            </div>
             
            <div class="form-group row">
                <label class="col-4 col-form-label">Last Name: </label>
                <div class="col-8">
                    <input type="text" name="lastName" th:field="*{lastName}" class="form-control"
                            required minlength="2" maxlength="20" />
                </div>
            </div>
             
            <div>
                <button type="submit" class="btn btn-primary">Sign Up</button>
            </div>
        </div>
        </form>
    </div>
    <script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>